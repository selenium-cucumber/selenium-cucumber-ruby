def get_platform_driver config_file, project_path
  begin
    device_config = YAML::load_file(project_path+"/../platform_configs/"+config_file)
    account_config = YAML::load_file(project_path+"/account_credentials.yml")
  rescue Exception => e
    puts "Got an exception : \n #{e} \n\n"
    Process.exit(0)
  end
  platform, device = $config_file.split("_")
  remote_url = nil
  case platform.downcase
    when "saucelab"
      return get_saucelab_driver(device_config, account_config, device, project_path)
    when "browserstack"
      return get_browserstack_driver(device_config, account_config, device, project_path)
    when "local"
      return get_local_mobile_driver(device_config, account_config, device, project_path)             
    else
      puts "Got an exception : \n #{e} \n"
      puts "Platfrom config file either should start with 'local', 'saucelab' or 'browserstack'"
      puts "Ex. : local_android_7_chrome.yml"
      puts "Ex. : saucelab_android_7_chrome.yml"
      puts "Ex. : browserstack_windows_7_chrome.yml \n\n"
      Process.exit(0)
  end
end

def get_local_mobile_driver device_config, account_config, device, project_path
  if device == "android" or device == 'ios'
    if device_config['app']
      app_path = File.absolute_path(project_path+"/../app_under_test/"+device_config['app'])
      device_config['app'] = app_path
    end
    
    desired_caps = {
      caps:device_config
    }
    
    begin
      return Appium::Driver.new(desired_caps).start_driver
    rescue Exception => e
      puts "Got an exception : \n #{e} \n\n"
      puts "Capabilities your using :\n\n"
      puts JSON.pretty_generate(device_config)
      Process.exit(0)
    end
  end   
end

def get_browserstack_driver device_config, account_config, device, project_path
  remote_url =  account_config['browserstack']['protocol']+ "://" +
                account_config['browserstack']['username'] + ":" + 
                account_config['browserstack']['access_key'] +
                account_config['browserstack']['url'];
  return create_driver_instance(remote_url,device_config)
end

def get_saucelab_driver device_config, account_config, device, project_path
  username = account_config['saucelab']['username']
  access_key = account_config['saucelab']['access_key']
  remote_url =  account_config['saucelab']['protocol']+ "://" + 
                username + ":" + 
                access_key +
                account_config['saucelab']['url'];
  if device == "android" or device == 'ios'
    if device_config['app']
      if device_config['app'].include? "sauce-storage"
        app_name = device_config['app'].split(":")[1]
        app_path = File.absolute_path(project_path+"/../app_under_test/"+app_name)
        upload_app_to_sauce_storage username, access_key, app_name, app_path
      end 
    end
    desired_caps = {
      caps:device_config,
      appium_lib: {
        sauce_username: account_config['saucelab']['username'],
        sauce_access_key: account_config['saucelab']['access_key']
      }
    }
    begin
      return Appium::Driver.new(desired_caps).start_driver
    rescue Exception => e
      puts "Got an exception : \n #{e} \n\n"
      Process.exit(0)
    end
  else
    return create_driver_instance(remote_url,device_config)
  end
end

def create_driver_instance remote_url,device_config
  begin
    return Selenium::WebDriver.for :remote, :url => remote_url, :desired_capabilities => device_config
  rescue Exception => e
    puts "Got an exception : \n #{e} \n\n"
    Process.exit(0)
  end
end

def upload_app_to_sauce_storage username, access_key, app_name, app_path
  begin
    uri = URI.parse("https://saucelabs.com/rest/v1/storage/#{username}/#{app_name}?overwrite=true")
    request = Net::HTTP::Post.new(uri)
    request.basic_auth(username, access_key)
    request.content_type = "application/octet-stream"
    request.body = ""
    request.body << File.read(app_path)

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end
    if response.code != '200'
      raise "\n Failed to upload your app to sauce storage.\n #{response.message}"
    end
  rescue Exception => e
    puts "Got an exception : \n #{e} \n\n"
    Process.exit(0)
  end
end
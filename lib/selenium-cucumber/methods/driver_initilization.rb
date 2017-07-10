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
    when "testingbot"
      return get_testingbot_driver(device_config, account_config, device, project_path)
    when "remote"
      return get_remote_driver(device_config, account_config, device, project_path)
    when "local"
      return get_local_mobile_driver(device_config, account_config, device, project_path)             
    else
      puts "Got an exception : \n #{e} \n"
      puts "Platform config file either should start with 'local', 'saucelab' or 'browserstack'"
      puts "Ex. : local_android_7_chrome.yml"
      puts "Ex. : saucelab_android_7_chrome.yml"
      puts "Ex. : browserstack_windows_7_chrome.yml \n\n"
      Process.exit(0)
  end
end

def get_local_mobile_driver device_config, account_config, device, project_path
  if device.downcase == "android" or device.downcase == 'ios'
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

def get_testingbot_driver device_config, account_config, device, project_path
  remote_url =  account_config['testingbot']['protocol']+ "://" +
                account_config['testingbot']['key'] + ":" + 
                account_config['testingbot']['secret'] +
                account_config['testingbot']['url'];
  return create_driver_instance(remote_url,device_config)
end

def get_browserstack_driver device_config, account_config, device, project_path
  remote_url =  account_config['browserstack']['protocol']+ "://" +
                account_config['browserstack']['username'] + ":" + 
                account_config['browserstack']['access_key'] +
                account_config['browserstack']['url'];
  return create_driver_instance(remote_url,device_config)
end

def get_remote_driver device_config, account_config, device, project_path
  print "Yet to implement remote driver"
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
        if not File.file?(app_path)
          puts "No app with name '#{app_name}' found in feature/app_under_test directory."
          Process.exit(0)
        end
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
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 480
    return Selenium::WebDriver.for(
      :remote, 
      :url => remote_url,
      :http_client => client, 
      :desired_capabilities => device_config
    )
  rescue Exception => e
    puts "Got an exception : \n #{e} \n\n"
    Process.exit(0)
  end
end

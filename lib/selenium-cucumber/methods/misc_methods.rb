
# custome exception class
class TestCaseFailed < Exception
end

# WAIT instance for explicit wait
WAIT = Selenium::WebDriver::Wait.new(:timeout => 30)

# method to validate locator
def valid_locator_type? type
  %w(id class css name xpath).include? type
end

def validate_locator type
  raise "Invalid locator type - #{type}" unless valid_locator_type? type
end

# method to validate dropdown selector
def valid_option_by? option_by
  %w(text value index).include? option_by
end

def validate_option_by option_by
  raise "Invalid option by - #{option_by}" unless valid_option_by? option_by
end

# Return android device name and android version using adb command
def get_device_info
  IO.popen('adb shell getprop ro.product.brand') { |f| $device = f.gets.chomp.upcase}
  $device += ' '
  IO.popen('adb shell getprop ro.product.model') { |f| $device += f.gets.chomp.upcase}
  IO.popen('adb shell getprop ro.build.version.release') { |f| $os_version = f.gets.chomp.upcase}
  return $device, $os_version
end

def get_cloud_platform_driver config_file, project_path
  begin
    device_config = YAML::load_file(project_path+"/../platform_configs/"+config_file)
    account_config = YAML::load_file(project_path+"/account_credentials.yml")
  rescue Exception => e
    puts "Got an exception : \n #{e} \n\n"
    Process.exit(0)
  end
  platform, device = $config_file.split("_")
  remote_url = nil
  case platform
    when "saucelab"
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
      end
    when "browserstack"
      remote_url =  account_config['browserstack']['protocol']+ "://" +
                    account_config['browserstack']['username'] + ":" + 
                    account_config['browserstack']['access_key'] +
                    account_config['browserstack']['url'];
    when "local"
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
          Process.exit(0)
        end
      end
                      
    else
      puts "Got an exception : \n #{e} \n"
      puts "Platfrom config file either should start with 'saucelab' or 'browserstack'"
      puts "Ex. : saucelab_android_7_chrome"
      puts "Ex. : browserstack_windows_7_chrome \n\n"
      Process.exit(0)
  end
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
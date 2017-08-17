def upload_app_to_cloud_platform(platform, app_name, project_path)
  app_path = project_path + "/../app_under_test/" + app_name
  if not File.file?(app_path)
    puts "\nGot an exception : \n\t#{app_name} app not found.\n"
    puts "\tMake sure you have kept app under 'app_under_test' directory."
    puts "\tMake sure you have spelled right."
    Process.exit(0)  
  end
  begin
      account_config = YAML::load_file(project_path+"/account_credentials.yml")
  rescue Exception => e
      puts "Got an exception : \n #{e} \n\n"
      Process.exit(0)
  end

  case platform.downcase
      when "saucelab"
        upload_app_to_sauce_storage account_config, app_name, app_path
      when "browserstack"
        puts "browserstack not supporting app testing yet"
      when "testingbot"
        puts "testingbot not supporting app testing yet"
      else
        invalid_platform_error_msg()
  end
end

def invalid_platform_error_msg()
  puts "\nGot an exception :"
  puts "\n -No platform or not supported platform passed."
  puts " -Currently supporting platforms :\n\t1.saucelab"
  puts " -Usage :"
  puts "\tcucumber UPLOAD_APP=your_app.apk PLATFORM=saucelab"
  puts "\tcucumber UPLOAD_APP=your_app.app PLATFORM=saucelab\n\n"
end

def upload_app_to_sauce_storage account_config, app_name, app_path
  begin
    username = account_config['saucelab']['username']
    access_key = account_config['saucelab']['access_key']
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
    puts "\n#{app_name} app succefully uploaded to saucelab."
  rescue Exception => e
    puts "Got an exception : \n #{e} \n\n"
    Process.exit(0)
  end
end
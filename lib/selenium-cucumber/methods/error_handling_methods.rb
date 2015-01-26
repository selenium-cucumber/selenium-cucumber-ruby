# Error handling methods

# Method to check browser type
def validate_parameters(platform, browser_type, app_path)
  if platform == 'desktop'
    if !%w(ff ie chrome safari opera).include? browser_type
      print_error_desktop
    end
  elsif platform == 'android'
      print_error_android browser_type, app_path
  elsif platform == 'iOS'
    puts "Not Implemented..."
    # print_error_ios browser_type, app_path
  else
    print_invalid_platform
  end
end

# print error for desktop
def print_error_desktop
  puts "\nInappropraite desktop browser : \"#{ENV['BROWSER']}\""
  puts "\nUsage : cucumber BROWSER=browser_name"
  puts "\nBrowser Supported  :\n"
  puts "\n1.ie\n2.chrome\n3.ff\n4.safari\n5.opera"
  Process.exit(0) 
end

# print error for android
def print_error_android(browser_type, app_path)
  if browser_type=='ff' and app_path==nil
    puts "\nOops... not mentioned \"Browser\" or \"App path\""
    print_error_android_app
    print_error_android_web
    Process.exit(0) 
  elsif browser_type!='ff' and !%w(native chrome).include? browser_type
    puts "\nOops... not supported browser"
    print_error_android_web
    Process.exit(0) 
  end
end

# print error for android app
def print_error_android_app
  puts "\nTo run test on android app"
  puts "\n  Usage : cucumber PLATFORM=android APP_PATH=path/to/app"
end

# print error for android web
def print_error_android_web
  puts "\nTo run test on android mobile web"
  puts "\n  Usage : cucumber PLATFORM=android BROWSER=browser_name"
  puts "\n  Supported browsers are \"chrome\" and \"native\""
end

# print error for ios
def print_error_ios
  if browser_type=='ff' and app_path==nil
    puts "\nOops... not mentioned \"Browser\" or \"App path\""
    print_error_ios_app
    print_error_ios_web
    Process.exit(0) 
  elsif browser_type!='safari'
    puts "\nOops... not supported browser"
    print_error_ios_app_web
    Process.exit(0) 
  end
end

# print error for ios app
def print_error_ios_app
  puts "\nTo run test on iOS App"
  puts "\n  Usage : cucumber PLATFORM=iOS APP_PATH=path/to/app"
end

# print error for ios web
def print_error_ios_web
  puts "\nTo run test on iOS mobile web"
  puts "\n  Usage : cucumber PLATFORM=iOS BROWSER=safari"
end

# print error if invalid platform
def print_invalid_platform
  puts "\nOops... Invalid Platform"
  puts "\nSupported platform are \"android\" and \"iOS\"."
  puts "\nTo run on Desktop no need to mention platform."
  Process.exit(0) 
end
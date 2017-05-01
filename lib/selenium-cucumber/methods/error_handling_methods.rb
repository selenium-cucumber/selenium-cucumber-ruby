# Error handling methods

# Method to check browser type
def validate_parameters(platform, browser_type, app_path, gem_version=nil)
  if gem_version == nil
    puts "\nWARNING :"
    puts "You are using older version of env.rb file."
    puts "To use new features please update your env.rb file from following url."
    puts "https://github.com/selenium-cucumber/selenium-cucumber-ruby/blob/master/features-skeleton/support/env.rb"
    puts "\n"
  end
  if platform == 'desktop'
    if !%w(ff ie chrome safari opera).include? browser_type
      puts "\nInappropraite desktop browser : \"#{ENV['BROWSER']}\""
      puts "\nUsage : cucumber BROWSER=browser_name"
      puts "\nBrowser Supported  :\n"
      puts "\n1.ie\n2.chrome\n3.ff\n4.safari\n5.opera"
      Process.exit(0) 
    end
  elsif platform == 'android'
    puts "\nParameter Deprecated : PLATFORM=android"
    puts "\nInsted use Platform Configuration File"
    puts "Platfrom config file should start with 'local', 'saucelab' or 'browserstack'"
    puts "Ex. : local_android_7_chrome.yml"
    puts "Ex. : saucelab_android_7_chrome.yml"
    puts "Ex. : browserstack_windows_7_chrome.yml \n\n"
    puts "Usage : cucumber PLATFORM_CONFIG=local_android_7_chrome.yml"
    Process.exit(0) 
  elsif platform == 'ios'
    puts "\nParameter Deprecated : PLATFORM=iOS"
    puts "\nInsted use Platform Configuration File"
    puts "Platfrom config file should start with 'local', 'saucelab' or 'browserstack'"
    puts "Ex. : local_ios_app.yml"
    puts "Ex. : saucelab_ios_pp.yml"
    puts "Ex. : browserstack_ios_safari.yml \n\n"
    puts "Usage : cucumber PLATFORM_CONFIG=local_ios_app.yml"
    Process.exit(0) 
  end
end


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

# print error if user pass invalid parameters or any exception due to selenium-webdriver
def print_error_desktop
  puts "\nInappropraite desktop browser : \"#{ENV['BROWSER']}\""
  puts "\nUsage : cucumber BROWSER=browser_name"
  puts "\nBrowser Supported  :\n"
  puts "\n1.ie\n2.chrome\n3.ff\n4.safari\n5.opera" 
  Process.exit(0)
end

# print error if user pass invalid parameters or any exception due to appium
def print_error_mobile
  
  puts "\nTo run test on mobile native app"
  puts "\nUsage : cucumber PLATFORM=platform APP_PATH=path/to/app"
  puts "\nPlatform Supported :\n"
  puts "\n1.android\n2.iOS" 
  
  puts "\n\nTo run test on mobile web"
  puts "\nUsage : cucumber PLATFORM=platform BROWSER=browser_name"
  puts "\nPlatform Supported :\n"
  puts "\n1.android\n2.iOS" 
  puts "\nBrowser Supported  :\n"
  puts "\n1.chrome\n2.native\n3.safari" 
  Process.exit(0)
end

# Return android device name and android version using adb command
def get_device_info
  IO.popen('adb shell getprop ro.product.brand') { |f| $device = f.gets.chomp.upcase}
  $device += ' '
  IO.popen('adb shell getprop ro.product.model') { |f| $device += f.gets.chomp.upcase}
  IO.popen('adb shell getprop ro.build.version.release') { |f| $os_version = f.gets.chomp.upcase}
  return $device, $os_version
end

# [ro.build.version.release]: [4.4.4]
# [ro.product.brand]
# [ro.product.model]
# [ro.build.characteristics]: [tablet,nosdcard]
# [ro.build.version.sdk]: [17]
# [ro.product.name]: [nakasi]

# Method to check browser type
def check_browser_type(platform, browser_type)
  if platform == 'desktop'
    if !%w(ff ie chrome safari opera).include? browser_type
      print_error_desktop
    end
  else
    if !%w(native chrome safari).include? browser_type
      print_error_mobile
    end
  end
end
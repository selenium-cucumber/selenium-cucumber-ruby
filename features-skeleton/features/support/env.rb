require 'rubygems'
require 'selenium-cucumber'

require_relative 'browserstack_parameters_error_handling_methods'

# Store command line arguments for local execution
$browser_type = ENV['BROWSER'] || 'ff'
$platform = ENV['PLATFORM'] || 'desktop'
#$os_version = ENV['OS_VERSION']
$device_name = ENV['DEVICE_NAME']
$udid = ENV['UDID']
$app_path = ENV['APP_PATH']

# Store command line arguments for remote execution on Browserstack.com
$remote_execution = ENV['REMOTE_EXECUTION'] || 'no'
$browserstack_browser_type = ENV['REMOTE_BROWSER'] || 'Firefox'
$browser_version_num = ENV['BROWSER_VERSION'] || '44.0'
$os = ENV['OS_TYPE'] || 'Windows'
$os_version = ENV['OS_VERSION'] || '7'
$resolution = ENV['RESOLUTION'] || '1024x768'

# check for valid parameters required for local execution
validate_parameters $platform, $browser_type, $app_path

# If platform is android or ios create driver instance for mobile browser
if $platform == 'android' or $platform == 'iOS' and $remote_execution == 'no'
  puts "Executing tests in local physical/simulator mobile device"
  if $browser_type == 'native'
    $browser_type = "Browser"
  end
  
  if $platform == 'android'
    $device_name, $os_version = get_device_info
  end
  
  desired_caps = {
    caps:       {
      platformName:  $platform,
      browserName: $browser_type,
      versionNumber: $os_version,
      deviceName: $device_name,
      udid: $udid,
      app: ".//#{$app_path}"
      },
    }

  begin
    $driver = Appium::Driver.new(desired_caps).start_driver
  rescue Exception => e
    puts e.message
    Process.exit(0)  
  end
elsif $platform == 'desktop' and $remote_execution == 'yes' # else create driver instance for remote browser on browserstack.com
validate_browserstack_parameters $os, $os_version, $browserstack_browser_type, $browser_version_num # check for valid parameters required for remote execution on browserstack.com if remote_execution is answered yes
puts "Executing tests on remote browser via Browserstack.com"
  begin
	# Input capabilities
	caps = Selenium::WebDriver::Remote::Capabilities.new
	caps["browser"] = $browserstack_browser_type
	caps["browser_version"] = $browser_version_num
	caps["os"] = $os
	caps["os_version"] = $os_version
	caps["resolution"] = $resolution
	caps["browserstack.debug"] = "true"
	caps["name"] = "Executing LeadingEdge QA scripts"

    $driver = Selenium::WebDriver.for(:remote,
  :url => "http://<username>:<token>@hub.browserstack.com/wd/hub", # enter the url from browserstack with token
  :desired_capabilities => caps)
    $driver.manage().window().maximize()
  rescue Exception => e
    puts e.message
    Process.exit(0)
  end
elsif $platform == 'desktop' and $remote_execution == 'no' # else create driver instance for desktop browser
  puts "Executing tests in local machine"
  begin
    $driver = Selenium::WebDriver.for(:"#{$browser_type}")
    $driver.manage().window().maximize()
  rescue Exception => e
    puts e.message
    Process.exit(0)
  end
else # else ask user to provide valid value for remote_execution
  puts "\nOops... Invalid answer for REMOTE_EXECUTION"
  puts "\nSupported answers are \"yes\" and \"no\"."
  puts "\nTo run on browserstack.com you need to specify it as \"yes\" else no need to mention REMOTE_EXECUTION for desktop execution."
  Process.exit(0)  
end

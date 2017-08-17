require 'rubygems'
require 'selenium-cucumber'
require 'yaml'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
        

# Store command line arguments
$upload_app = ENV['UPLOAD_APP']
$platform = ENV['PLATFORM'] || 'desktop'
$browser = ENV['BROWSER'] || 'ff'
$config_file = ENV['PLATFORM_CONFIG']
if $upload_app
  upload_app_to_cloud_platform($platform, $upload_app, __dir__)
	Process.exit(0)
end

validate_parameters $platform, $browser, $app_path, "4.0.0"

if $config_file
  $driver = get_platform_driver($config_file, __dir__)
else
  begin
    $driver = Selenium::WebDriver.for(:"#{$browser}")
    $driver.manage().window().maximize()
  rescue Exception => e
    puts e.message
    puts e.backtrace
    Process.exit(0)
  end
end

$driver.manage.timeouts.implicit_wait = 5
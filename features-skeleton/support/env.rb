require 'rubygems'
require 'selenium-cucumber'
require 'yaml'

# Store command line arguments
$platform = ENV['PLATFORM'] || 'desktop'
$browser_type = ENV['BROWSER'] || 'ff'
$config_file = ENV['PLATFORM_CONFIG']

validate_parameters $platform, $browser_type, $app_path, "4.0.0"

if $config_file
  $driver = get_platform_driver($config_file, __dir__)
else
  begin
    $driver = Selenium::WebDriver.for(:"#{$browser_type}")
    $driver.manage().window().maximize()
  rescue Exception => e
    puts e.message
    puts e.backtrace
    Process.exit(0)
  end
end

$driver.manage.timeouts.implicit_wait = 5
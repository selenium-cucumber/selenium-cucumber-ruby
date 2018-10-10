
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

def lookup(key)
  $lookup_table[key] || key
end
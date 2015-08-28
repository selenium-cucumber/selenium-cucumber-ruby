require_relative 'required_files'

# method to print configuration
def print_congifugartion
  puts ''
  puts "Date : #{Time.now.strftime("%d-%B-%Y")}"
  puts "Time : #{Time.now.strftime("%I:%M:%S:%p")}"

  if $platform == 'android' or $platform == 'ios'
  	print_mobile_configuration
  else
  	print_desktop_configuration
  end
end

# method to print desktop configuration
def print_desktop_configuration
  puts 'Platform : ' + $driver.capabilities.platform.to_s.upcase
  puts 'Browser : ' + $driver.capabilities.browser_name.to_s.upcase + " " + $driver.capabilities.version.to_s
  puts ''
end

# method to print mobile configuration
def print_mobile_configuration
  puts "Platform : #{$platform.upcase}" 
  puts "OS version : #{$os_version}" 
  puts "Device : #{$device_name}" 

  if $app_path.nil?
  	puts 'Browser : ' + $driver.capabilities.browser_name.to_s.upcase + " " + $driver.capabilities.version.to_s
  else
  	puts "App Tested : #{$app_path}" 
  end
  puts ''
end

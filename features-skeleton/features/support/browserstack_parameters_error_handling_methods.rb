# Error handling methods for remote execution on browserstack.com

# Method to check browser type on provided OS version
def validate_browserstack_parameters(bs_os, bs_os_version, bs_browser_type, bs_browser_version)
  if bs_os == 'Windows' && bs_os_version == '7'
    if !%w(Firefox IE Chrome Opera).include? bs_browser_type
	  print_invalid_browser_for_os
    end
  elsif bs_os == 'Windows' && bs_os_version == '8'
    if !%w(Firefox IE Chrome Opera).include? bs_browser_type
      print_invalid_browser_for_os
    end
  elsif bs_os == 'Windows' && bs_os_version == '10'
    if !%w(Firefox Edge IE Chrome).include? bs_browser_type
      print_invalid_browser_for_os
    end
  elsif bs_os == 'OS X' && bs_os_version == 'El Capitan'
    if !%w(Firefox Safari Chrome Opera).include? bs_browser_type
      print_invalid_browser_for_os
    end
  elsif bs_os == 'iOS' && bs_os_version == 'iPhone 6S - 9.1'
    if !%w(iPhone).include? bs_browser_type
      print_invalid_browser_for_os
    end	
  elsif bs_os == 'iOS' && bs_os_version == 'Galaxy S5 - 4.4'
    if !%w(android).include? bs_browser_type
      print_invalid_browser_for_os
    end
  else
    puts "Provided OS and/or OS version values are either invalid or not specified in browserstack_parameters_error_handling.rb file in support folder"
  end
end

# print error for invalid browser for OS
def print_invalid_browser_for_os
  puts "\nBrowser : \"#{ENV['REMOTE_BROWSER']}\" is not available on OS \"#{ENV['OS']}\" \"#{ENV['OS_VERSION']}\""
  puts "\nUsage : cucumber REMOTE_BROWSER=browser_name"
  puts "\nBrowser Supported  :\n"
  puts "\n1.ie\n2.chrome\n3.ff\n4.safari\n5.opera"
  Process.exit(0) 
end
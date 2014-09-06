require_relative 'required_files'

# method to print configuration

def print_congifugartion
  puts 'Configuration'
  puts "Date : #{Time.now.strftime("%d-%B-%Y")}"
  puts "Time : #{Time.now.strftime("%I:%M:%S:%p")}"
  puts 'Operating System : ' + Selenium::WebDriver::Platform.os.to_s.upcase
  puts 'Browser : ' + "$driver.browser"
end



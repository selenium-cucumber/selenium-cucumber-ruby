require_relative 'required_files'

#method to print configuration

def print_congifugartion
    puts "Configuration : "+$driver.execute_script("return navigator.userAgent;")
    puts "Date and Time : #{Time.now}"
end
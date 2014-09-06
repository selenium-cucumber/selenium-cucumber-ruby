require 'rubygems'
require 'selenium-webdriver'

def print_error
  puts "\nInappropraite browser \"#{ENV['BROWSER']}\""
  puts "\nUsage : cucumber BROWSER=browser_name"
  puts "\nbrowser_name can be one of following :"
  puts "1.ie\n2.chrome\n3.ff\n4.safari\n5.opera" 
  puts "\nNow using default browser \"Firefox\""
end

case ENV['BROWSER']
  when 'ie'
    browser_type = :ie
  when 'ff'
    browser_type = :ff
  when 'chrome'
    browser_type = :chrome
  when 'opera'
    browser_type = :opera
  when 'safari'
    browser_type = :safari
  else
    if ENV['BROWSER']
      print_error
    end
    browser_type = :ff
end


begin
    $driver = Selenium::WebDriver.for(browser_type)
    $driver.manage().window().maximize()
  rescue Exception => e
    puts e.message
end


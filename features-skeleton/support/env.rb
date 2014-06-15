require 'rubygems'
require 'selenium-webdriver'

$BASE_URL = ENV["URL"] || "ff"

case ENV['BROWSER']
  when 'ie'
    browser_type = :ie
  when 'ff'
    browser_type = :ff
  when 'chrome'
    browser_type = :chrome
  when 'opera'
    browser_type = :opera
  else
    browser_type = :ff
end

browser = Selenium::WebDriver.for(browser_type)
#puts browser_type.to_s
Before do
  $driver = browser
  $driver.manage().window().maximize()
#  $driver.get $BASE_URL
end

at_exit() do
  $driver.close
end
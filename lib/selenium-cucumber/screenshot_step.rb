require 'rubygems'
require "selenium-webdriver"


Then(/^I take screenshot$/) do
  curTime = Time.now.strftime('%Y%m%d%H%M%S%L')
  $driver.save_screenshot('./screenshot'+curTime+'.png')
end
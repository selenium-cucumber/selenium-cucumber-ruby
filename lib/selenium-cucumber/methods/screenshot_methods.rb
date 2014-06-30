require 'rubygems'
require "selenium-webdriver"

def take_screenshot
	curTime = Time.now.strftime('%Y%m%d%H%M%S%L')
  	$driver.save_screenshot('./screenshot'+curTime+'.png')
end
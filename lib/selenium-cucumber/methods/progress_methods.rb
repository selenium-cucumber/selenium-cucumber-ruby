require 'rubygems'
require "selenium-webdriver"

def wait(time)
	sleep time.to_i
end

def wait_for_element(access_type,access_name,duration)
	wait = Selenium::WebDriver::Wait.new(:timeout => duration.to_i) # seconds
	element = wait.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }
end
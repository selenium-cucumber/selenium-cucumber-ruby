require 'rubygems'
require "selenium-webdriver"

def wait(time)
	sleep time.to_i
end

def wait_for_element_to_display(access_type,access_name,duration)
	wait = Selenium::WebDriver::Wait.new(:timeout => duration.to_i) # seconds
	wait.until { $driver.find_element(:"#{access_type}" => "#{access_name}").displayed? }
end

def wait_for_element_to_enable(access_type,access_name,duration)
	wait = Selenium::WebDriver::Wait.new(:timeout => duration.to_i) # seconds
	wait.until { $driver.find_element(:"#{access_type}" => "#{access_name}").enabled? }
end
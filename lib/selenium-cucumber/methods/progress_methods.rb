require 'rubygems'
require "selenium-webdriver"

def wait_for_element(access_type,access_id)
	wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
	element = wait.until { $driver.find_element(:"#{access_type}" => "#{access_id}") }
end
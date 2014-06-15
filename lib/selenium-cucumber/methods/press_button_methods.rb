require 'rubygems'
require "selenium-webdriver"

def click(access_type,access_name)	
	element = $driver.find_element(:"#{access_type}" => "#{access_name}").click
end

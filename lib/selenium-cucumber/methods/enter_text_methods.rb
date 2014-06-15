require 'rubygems'
require "selenium-webdriver"


def enter_text(access_type,text,access_name)
	element = $driver.find_element(:"#{access_type}" => "#{access_name}").send_keys text
end

def clear_text(access_type,access_name)
	element = $driver.find_element(:"#{access_type}" => "#{access_name}").clear
end




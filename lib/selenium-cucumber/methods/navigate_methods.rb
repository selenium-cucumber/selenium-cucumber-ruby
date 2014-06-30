require 'rubygems'
require "selenium-webdriver"


def navigate_to(link)
	$driver.get link
end

def navigate(direction)
	$driver.navigate.direction
end

def close_driver
	$driver.quit
end

require 'rubygems'
require "selenium-webdriver"


def navigate_to(link)
	$driver.get link
end

def close_driver
	$driver.quit
end

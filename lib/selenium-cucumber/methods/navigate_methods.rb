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

def scroll_to_element(access_type,access_name)
	ele_scroll = $driver.find_element(:"#{access_type}" => "#{access_name}")
  	ele_scroll.location_once_scrolled_into_view
end
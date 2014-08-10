require 'selenium-cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code



Given(/^I open test page$/) do
	link = 'file:///'
  	link+= File.absolute_path("test_page.html")
  	navigate_to(link) 
end


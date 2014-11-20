require 'selenium-cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code



Given(/^I open test page$/) do
	link = 'file:///'
  	link+= File.absolute_path("test_page.html")
  	navigate_to(link) 
end

Then(/^I press "(.*?)" key from keyboard$/) do |key|
	$driver.action.send_keys(:"#{key}").perform
end

Then(/^Then I press  combination of "(.*?)" and "(.*?)" keys from keyboard$/) do |key1, key2|
	$driver.action.key_down(:"#{get_key}").send_keys(:"#{in_out}").key_up(:"#{get_key}").perform
end
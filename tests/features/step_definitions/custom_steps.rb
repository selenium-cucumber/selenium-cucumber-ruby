require 'selenium-cucumber'
require 'appium_lib'
# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code



Given(/^I open test page$/) do
	link = 'file:///'
  	link+= File.absolute_path("test_page.html")
  	navigate_to(link) 
end

# Then(/^I press "(.*?)" key from keyboard$/) do |key|
# 	$driver.action.send_keys(:"#{key}").perform
# end

# Then(/^Then I press  combination of "(.*?)" and "(.*?)" keys from keyboard$/) do |key1, key2|
# 	$driver.action.key_down(:"#{get_key}").send_keys(:"#{in_out}").key_up(:"#{get_key}").perform
# end

# Then(/^I long press on element having (.+) "(.*?)"$/) do |type, access_name|
#   validate_locator type
#   long_press_1(type, access_name, 5)
# end

# def long_press_1(type, access_name, duration)
#   element = WAIT.until { $driver.find_element(:"#{type}" => "#{access_name}") }
#   #parameters = { "element" => "#{element}", "duration" => "#{duration}" }
#   #args = parameters.select { |k, v| [:element, :duration].include? k }
#   #args = args_with_ele_ref(args)
#   #chain_method(:longPress, args)
#   #Appium::TouchAction.new.tap(element: "#{element}", count: "#{duration}").perform
#   Appium::TouchAction.new.long_press(element:element, x:10, y:10, duration:duration).perform()
# end


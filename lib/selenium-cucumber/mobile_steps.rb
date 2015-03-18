require_relative 'methods/mobile_gesture_methods'

Then(/^I swipe from element having (.+) "(.*?)" to element having (.+) "(.*?)"$/) do |type1,access_name1,type2,access_name2|
  validate_locator type1
  validate_locator type2
  get_coordinates(type1, access_name1, type2, access_name2)
  start_x = $start_x
  start_y = $start_y
  end_x = $end_x
  end_y = $end_y
  swipe(start_x, start_y, end_x, end_y)
  puts "Swipe Successfull using app elements"
end

Then(/^I swipe from co\-ordinates "(.*?)","(.*?)" to co\-ordinates "(.*?)","(.*?)"$/) do |start_x, start_y, end_x, end_y|
  swipe(start_x, start_y, end_x, end_y)
  puts "Swipe Successfull using co-ordinates"
end

Then(/^I long tap on element having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  long_press_on_element_default_duration(type, access_name)
end

Then(/^I long tap on element having (.+) "(.*?)" for "(.*?)" sec$/) do |type, access_name, duration|
  validate_locator type
  long_press_on_element_with_duration(type, access_name, duration)
end

Then(/^I long tap on co\-ordinate "(.*?)","(.*?)"$/) do |x, y|
  long_press_on_coordinates(x, y)
end

Then(/^I long tap on co\-ordinate "(.*?)","(.*?)" for "(.*?)" sec$/) do |x, y, duration|
  long_press_on_coordinates_with_duration(x, y, duration)
end

Then(/^I close app$/) do
  close_app
end
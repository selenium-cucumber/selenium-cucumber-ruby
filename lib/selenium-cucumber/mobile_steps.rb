require_relative 'methods/mobile_methods'
require_relative 'methods/navigate_methods'

#---------- swipe with elements
Then(/^I swipe from element having (.+) "(.*?)" to element having (.+) "(.*?)"$/) do |type1,access_name1,type2,access_name2|
  validate_locator type1
  validate_locator type2
  swipe_using_elements(type1,access_name1,type2,access_name2)
end

#---------- swipe with co-ordinates
Then(/^I swipe from co\-ordinates "(.*?)","(.*?)" to co\-ordinates "(.*?)","(.*?)"$/) do |start_x, start_y, end_x, end_y|
  swipe(start_x, start_y, end_x, end_y)
end

#---------- Swipe with direction
Then(/^I swipe left$/) do
  swipe_direction("left")
end

Then(/^I swipe right$/) do
  swipe_direction("right")
end

Then(/^I swipe up$/) do
  swipe_direction("up")
end

Then(/^I swipe down$/) do
  swipe_direction("down")
end
 
#----------- Swipe element with direction
Then(/^I swipe element having (.+) "(.*?)" to right$/) do |type, access_name|
  validate_locator type
  swipe_element_with_direction(type, access_name, "right")
end

Then(/^I swipe element having (.+) "(.*?)" to left$/) do |type, access_name|
  swipe_element_with_direction(type, access_name, "left")
end

Then(/^I swipe element having (.+) "(.*?)" to up$/) do |type, access_name|
  swipe_element_with_direction(type, access_name, "up")
end

Then(/^I swipe element having (.+) "(.*?)" to down$/) do |type, access_name|
  swipe_element_with_direction(type, access_name, "down")
end

#swipe co-ordinates with direction

  Then(/^I swipe co\-ordinates "(.*?)","(.*?)" to left$/) do |start_x, start_y|
     swipe_coordinates_with_direction(start_x, start_y, "left")
  end


  Then(/^I swipe co\-ordinates "(.*?)","(.*?)" to right$/) do |start_x, start_y|
     swipe_coordinates_with_direction(start_x, start_y, "right")
  end


  Then(/^I swipe co\-ordinates "(.*?)","(.*?)" to up$/) do |start_x, start_y|
     swipe_coordinates_with_direction(start_x, start_y, "up")
  end


  Then(/^I swipe co\-ordinates "(.*?)","(.*?)" to down$/) do |start_x, start_y|
     swipe_coordinates_with_direction(start_x, start_y, "down")
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

Then(/^I tap on back button of device$/) do
  navigate('back')
end

Then(/^I press back button of device$/) do
  navigate('back')
end


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
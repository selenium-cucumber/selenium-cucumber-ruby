require_relative 'methods/navigate_methods'

Then(/^I navigate to "([^\"]*)"$/)do |link|
  navigate_to(link)
end

Then(/^I navigate forward/) do
  navigate('forward')
end

Then(/^I navigate back/) do
  navigate('back')
end

Then(/^I close browser$/) do
  close_driver
end

# step to resize browser
Then(/^I resize browser window size to width (\d+) and height (\d+)$/) do |width, heigth|
  resize_browser(width, heigth)
end

# step to maximize browser
Then(/^I maximize browser window$/) do
  maximize_browser
end

# steps to refresh page
Then(/^I refresh page$/) do
  $driver.navigate.refresh
end

Then(/^I switch to new window$/) do
  switch_to_new_window
end

Then(/^I switch to previous window$/) do
  switch_to_old_window
end

# steps to scroll to element
Then(/^I scroll to element having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  scroll_to_element(type, access_name)
end

# steps to scroll web page to top or end
Then(/^I scroll to (top|end) of page$/) do |to|
  scroll_page(to)
end

# step to hover over a element       Note: Doesn't work on Windows firefox
When(/^I hover over element having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  hover_over_element(type, access_name)
end

# steps to zoom in page
Then(/^I zoom in page$/) do
  zoom_in_out('add')
end

# steps to zoom out page
Then(/^I zoom out page$/) do
  zoom_in_out('subtract')
end

# steps to zoom out till element displays
Then(/^I zoom out page till I see element having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  zoom_in_out_till_element_display(type, 'subtract', access_name)
end

Then(/^I reset page view$/) do
  zoom_in_out('numpad0')
end

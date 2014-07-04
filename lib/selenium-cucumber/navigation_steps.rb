require_relative 'methods/navigate_methods'

Then(/^I navigate to "([^\"]*)"$/)do |link|
	navigate_to(link)
end

Then(/^I navigate forward/) do
	navigate("forward")
end

Then(/^I navigate back/) do
	navigate("back")
end

Then(/^I close browser$/) do
    close_driver
end

#step to resize browser
Then(/^I resize browser with width (\d+) and heigth (\d+)$/) do |width, heigth|
  resize_browser(width,heigth)
end

#steps to refresh page
Then(/^I refresh page$/) do
  $driver.navigate.refresh
end

#steps to scroll to element
Then(/^I scroll to the element having id "(.*?)"$/) do |access_name|
   scroll_to_element("id",access_name)
end

Then(/^I scroll to the element having name "(.*?)"$/) do |access_name|
   scroll_to_element("name",access_name)
end

Then(/^I scroll to the element having class "(.*?)"$/) do |access_name|
   scroll_to_element("class",access_name)
end

Then(/^I scroll to the element having xpath "(.*?)"$/) do |access_name|
   scroll_to_element("xpath",access_name)
end

Then(/^I scroll to the element having css "(.*?)"$/) do |access_name|
   scroll_to_element("css",access_name)
end 

#steps to zoom in page
Then(/^I zoom in page$/) do
  zoom_in_out("add")
end

#steps to zoom out page
Then(/^I zoom out page$/) do
  zoom_in_out("subtract")
end


#steps to zoom out till element displays
Then(/^I zoom out page till I see element having id "(.*?)"$/) do |access_name|
  zoom_in_out_till_element_display("id", "subtract", access_name)
end

Then(/^I zoom out page till I see element having name "(.*?)"$/) do |access_name|
  zoom_in_out_till_element_display("name", "subtract", access_name)
end

Then(/^I zoom out page till I see element having class "(.*?)"$/) do |access_name|
  zoom_in_out_till_element_display("class", "subtract", access_name)
end

Then(/^I zoom out page till I see element having xpath "(.*?)"$/) do |access_name|
  zoom_in_out_till_element_display("xpath", "subtract", access_name)
end

Then(/^I zoom out page till I see element having css "(.*?)"$/) do |access_name|
  zoom_in_out_till_element_display("css", "subtract", access_name)
end

Then(/^I reset page view$/) do
  zoom_in_out("numpad0")
end

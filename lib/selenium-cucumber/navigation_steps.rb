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
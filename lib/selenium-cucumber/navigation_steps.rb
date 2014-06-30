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
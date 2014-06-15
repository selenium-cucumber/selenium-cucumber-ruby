require_relative 'methods/navigate_methods'

Then(/^I navigate to "([^\"]*)"$/)do |link|
	navigate_to(link)
end

Then(/^I close browser$/) do
    close_driver
end
require_relative 'methods/progress_methods'

# wait for specific period of time
Then(/^I wait for (\d+) sec$/) do |time|
  	wait(time)
end

# wait for specific element to display for specific period of time

Then(/^I wait (\d+) seconds for element to display having (.+) "(.*?)"$/) do |duration, type, access_name|
	validate_locator type
	wait_for_element_to_display(type,access_name,duration)
end

# wait for specific element to enable for specific period of time

Then(/^I wait (\d+) seconds for element to enable having (.+) "(.*?)"$/) do |duration, type, access_name|
	validate_locator type
	wait_for_element_to_enable(type,access_name,duration)
end


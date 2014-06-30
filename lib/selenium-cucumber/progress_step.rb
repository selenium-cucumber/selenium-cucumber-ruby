require_relative 'methods/progress_methods'

# wait for specific period of time
Then(/^I wait for (\d+) sec$/) do |time|
  	wait(time)
end

# wait for specific element to display for specific period of time
#By ID
Then(/^I wait (\d+) seconds for element to display having id "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_display("id",access_name,duration)
end

#By NAME
Then(/^I wait (\d+) seconds for element to display having name "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_display("name",access_name,duration)
end

#By CLASS
Then(/^I wait (\d+) seconds for element to display having class "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_display("class",access_name,duration)
end

#By XPATH
Then(/^I wait (\d+) seconds for element to display having xpath "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_display("xpath",access_name,duration)
end

#By CSS
Then(/^I wait (\d+) seconds for element to display having css "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_display("css",access_name,duration)
end

# wait for specific element to enable for specific period of time
#By ID
Then(/^I wait (\d+) seconds for element to enable having id "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_enable("id",access_name,duration)
end

#By NAME
Then(/^I wait (\d+) seconds for element to enable having name "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_enable("name",access_name,duration)
end

#By CLASS
Then(/^I wait (\d+) seconds for element to enable having class "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_enable("class",access_name,duration)
end

#By XPATH
Then(/^I wait (\d+) seconds for element to enable having xpath "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_enable("xpath",access_name,duration)
end

#By CSS
Then(/^I wait (\d+) seconds for element to enable having css "(.*?)"$/) do |duration, access_name|
	wait_for_element_to_enable("css",access_name,duration)
end

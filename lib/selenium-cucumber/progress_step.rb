require_relative 'methods/progress_methods'

# wait for specific period of time
Then(/^I wait for (\d+) sec$/) do |time|
  	wait(time)
end

# wait for specific element for specific period of time
#By ID
Then(/^I wait (\d+) seconds for element having id "(.*?)"$/) do |duration, access_name|
	wait_for_element("id",access_name,duration)
end

#By NAME
Then(/^I wait (\d+) seconds for element having name "(.*?)"$/) do |duration, access_name|
	wait_for_element("name",access_name,duration)
end

#By CLASS
Then(/^I wait (\d+) seconds for element having class "(.*?)"$/) do |duration, access_name|
	wait_for_element("class",access_name,duration)
end

#By XPATH
Then(/^I wait (\d+) seconds for element having xpath "(.*?)"$/) do |duration, access_name|
	wait_for_element("xpath",access_name,duration)
end

#By CSS
Then(/^I wait (\d+) seconds for element having css "(.*?)"$/) do |duration, access_name|
	wait_for_element("css",access_name,duration)
end

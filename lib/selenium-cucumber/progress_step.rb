require_relative 'methods/progress_methods'

Then(/^I wait for (\d+) sec$/) do |time|
  sleep time.to_i
end

Then(/^I wait "(.*?)" second for element having id "(.*?)"$/) do |duration, id|
	wait_for_element("id",id,duration)
end

Then(/^I wait "(.*?)" second for element having name "(.*?)"$/) do |duration, name|
	wait_for_element("name",name,duration)
end

Then(/^I wait "(.*?)" second for element having xpath "(.*?)"$/) do |duration, xpath|
	wait_for_element("xpath",xpath,duration)
end

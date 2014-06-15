require_relative 'methods/assertion_methods'

#Page title checking
Then(/^I see page title as "(.*?)"$/) do |title|
  	check_title(title)
end

#Element Value checking - Positive Case
Then /^I should see element value as "([^\"]*)" where element id is "([^\"]*)"$/ do |element_value, element_id|
  	check_element_value("id",element_value,element_id,true)
end

Then /^I should see element value as "([^\"]*)" where element name is "([^\"]*)"$/ do |element_value, element_name|
  	check_element_value("name",element_value,element_name,true)
end

Then /^I should see element value as "([^\"]*)" where element xpath is "([^\"]*)"$/ do |element_value, element_xpath|
  	check_element_value("xpath",element_value,element_xpath,true)
end

#Element Value checking - Negative Case
Then /^I should not see element value as "([^\"]*)" where element id is "([^\"]*)"$/ do |element_value, element_id|
  	check_element_value("id",element_value,element_id,false)
end

Then /^I should not see element value as "([^\"]*)" where element name is "([^\"]*)"$/ do |element_value, element_name|
  	check_element_value("name",element_value,element_name,false)
end

Then /^I should not see element value as "([^\"]*)" where element xpath is "([^\"]*)"$/ do |element_value, element_xpath|
  	check_element_value("xpath",element_value,element_xpath,false)
end

#Element enabled checking - Positive Case
Then /^element with id "([^\"]*)" should enable$/ do |element_id|
  	check_element_enable("id", element_id, true)
end

Then /^element with name "([^\"]*)" should enable$/ do |element_name|
  	check_element_enable("name", element_name, true)
end

Then /^element with xpath "([^\"]*)" should enable$/ do |element_xpath|
  	check_element_enable("xpath", element_xpath, true)
end

#Element disabled checking - Positive Case
Then /^element with id "([^\"]*)" should disable$/ do |element_id|
  	check_element_enable("id", element_id, false)
end

Then /^element with name "([^\"]*)" should disable$/ do |element_name|
  	check_element_enable("name", element_name, false)
end

Then /^element with xpath "([^\"]*)" should disable$/ do |element_xpath|
  	check_element_enable("xpath", element_xpath, false)
end
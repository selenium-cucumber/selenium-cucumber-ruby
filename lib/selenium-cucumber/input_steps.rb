require_relative 'methods/input_methods'

#enter text into input field steps

#By ID
Then(/^I enter "([^\"]*)" into input field with id "([^\"]*)"$/) do |text, access_name|
	enter_text("id",text,access_name)
end

#By NAME
Then(/^I enter "([^\"]*)" into input field with name "([^\"]*)"$/) do |text, access_name|
	enter_text("name",text,access_name)
end

#By CLASS
Then(/^I enter "([^\"]*)" into input field with class "([^\"]*)"$/) do |text, access_name|
	enter_text("class",text,access_name)
end

#By XPATH
Then(/^I enter "([^\"]*)" into input field with xpath "([^\"]*)"$/) do |text, access_name|
	enter_text("xpath",text,access_name)
end

#By CSS
Then(/^I enter "([^\"]*)" into input field with css "([^\"]*)"$/) do |text, access_name|
	enter_text("css",text,access_name)
end

#clear input field steps

#By ID
Then(/^I clear input field with id "([^\"]*)"$/) do |access_name|
	clear_text("id",access_name)
end

#By NAME
Then(/^I clear input field with name "([^\"]*)"$/) do |access_name|
	clear_text("name",access_name)
end

#By CLASS
Then(/^I clear input field with class "([^\"]*)"$/) do |access_name|
	clear_text("class",access_name)
end

#By XPATH
Then(/^I clear input field with xpath "([^\"]*)"$/) do |access_name|
	clear_text("xpath",access_name)
end

#By CSS
Then(/^I clear input field with css "([^\"]*)"$/) do |access_name|
	clear_text("css",access_name)
end


#select option by text from Drop down list 
#By TEXT
#By ID
Then(/^I select "(.*?)" option by text from dropdown with id "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("id","text",option,access_name)
end

#By NAME
Then(/^I select "(.*?)" option by text from dropdown with name "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("name","text",option,access_name)
end

#By CLASS
Then(/^I select "(.*?)" option by text from dropdown with class "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("class","text",option,access_name)
end

#By XPATH
Then(/^I select "(.*?)" option by text from dropdown with xpath "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("xpath","text",option,access_name)
end

#By CSS
Then(/^I select "(.*?)" option by text from dropdown with css "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("css","text",option,access_name)
end

#select option by index from Drop down list 
#By INDEX
#By ID
Then(/^I select (\d+) option by index from dropdown with id "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("id","index",option,access_name)
end

#By NAME
Then(/^I select (\d+) option by index from dropdown with name "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("name","index",option,access_name)
end

#By CLASS
Then(/^I select (\d+) option by index from dropdown with class "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("class","index",option,access_name)
end

#By XPATH
Then(/^I select (\d+) option by index from dropdown with xpath "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("xpath","index",option,access_name)
end

#By CSS
Then(/^I select (\d+) option by index from dropdown with css "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("css","index",option,access_name)
end

#select option by value from Drop down list 
#By VALUE
#By ID
Then(/^I select "(.*?)" option by value from dropdown with id "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("id","value",option,access_name)
end

#By NAME
Then(/^I select "(.*?)" option by value from dropdown with name "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("name","value",option,access_name)
end

#By CLASS
Then(/^I select "(.*?)" option by value from dropdown with class "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("class","value",option,access_name)
end

#By XPATH
Then(/^I select "(.*?)" option by value from dropdown with xpath "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("xpath","value",option,access_name)
end

#By CSS
Then(/^I select "(.*?)" option by value from dropdown with css "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("css","value",option,access_name)
end


#unselect option from dropdown list

#By ID
Then(/^I unselect options from dropdown with id "(.*?)"$/) do |access_name|
	unselect_option_from_dropdown("id", access_name)
end

#By NAME
Then(/^I unselect options from dropdown with name "(.*?)"$/) do |access_name|
  	unselect_option_from_dropdown("name", access_name)
end

#By CLASS
Then(/^I unselect options from dropdown with class "(.*?)"$/) do |access_name|
	unselect_option_from_dropdown("class", access_name)
end

#By XPATH
Then(/^I unselect options from dropdown with xpath "(.*?)"$/) do |access_name|
	unselect_option_from_dropdown("xpath", access_name)
end

#By CSS
Then(/^I unselect options from dropdown with css "(.*?)"$/) do |access_name|
	unselect_option_from_dropdown("css", access_name)
end

#check checkbox steps
#By ID
Then(/^I check checkbox with id "(.*?)"$/) do |access_name|
  check_checkbox("id",access_name)
end

#By NAME
Then(/^I check checkbox with name "(.*?)"$/) do |access_name|
  check_checkbox("name",access_name)
end

#By CLASS
Then(/^I check checkbox with class "(.*?)"$/) do |access_name|
  check_checkbox("class",access_name)
end

#By XPATH
Then(/^I check checkbox with xpath "(.*?)"$/) do |access_name|
  check_checkbox("xpath",access_name)
end

#By CSS
Then(/^I check checkbox with css "(.*?)"$/) do |access_name|
  check_checkbox("css",access_name)
end

#uncheck checkbox steps
#By ID
Then(/^I uncheck checkbox with id "(.*?)"$/) do |access_name|
  uncheck_checkbox("id",access_name)
end

#By NAME
Then(/^I uncheck checkbox with name "(.*?)"$/) do |access_name|
  uncheck_checkbox("name",access_name)
end

#By CLASS
Then(/^I uncheck checkbox with class "(.*?)"$/) do |access_name|
  uncheck_checkbox("class",access_name)
end

#By XPATH
Then(/^I uncheck checkbox with xpath "(.*?)"$/) do |access_name|
  uncheck_checkbox("xpath",access_name)
end

#By CSS
Then(/^I uncheck checkbox with css "(.*?)"$/) do |access_name|
  uncheck_checkbox("css",access_name)
end

#Steps to toggle checkbox
#By ID
Then(/^toggle checkbox with id "(.*?)"$/) do |access_name|
  toggle_checkbox("id",access_name)
end

#By NAME
Then(/^toggle checkbox with name "(.*?)"$/) do |access_name|
  toggle_checkbox("name",access_name)
end

#By CLASS
Then(/^toggle checkbox with class "(.*?)"$/) do |access_name|
  toggle_checkbox("class",access_name)
end

#By XPATH
Then(/^toggle checkbox with xpath "(.*?)"$/) do |access_name|
  toggle_checkbox("xpath",access_name)
end

#By CSS
Then(/^toggle checkbox with css "(.*?)"$/) do |access_name|
  toggle_checkbox("css",access_name)
end

#radio button select steps
#By ID
Then(/^I select radio button with id "(.*?)"$/) do |access_name|
  select_radio_button("id",access_name)
end

#By NAME
Then(/^I select radio button with name "(.*?)"$/) do |access_name|
  select_radio_button("name",access_name)
end

#By CLASS
Then(/^I select radio button with class "(.*?)"$/) do |access_name|
  select_radio_button("class",access_name)
end

#By XPATH
Then(/^I select radio button with xpath "(.*?)"$/) do |access_name|
  select_radio_button("xpath",access_name)
end

#By CSS
Then(/^I select radio button with css "(.*?)"$/) do |access_name|
  select_radio_button("css",access_name)
end


#steps to select option by text from radio button group 
#By ID
Then(/^I select "(.*?)" option by text from radio button group with id "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("id","text",option,access_name)
end

#By NAME
Then(/^I select "(.*?)" option by text from radio button group with name "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("name","text",option,access_name)
end

#By CLASS
Then(/^I select "(.*?)" option by text from radio button group with class "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("class","text",option,access_name)
end

#By XPATH
Then(/^I select "(.*?)" option by text from radio button group with xpath "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("xpath","text",option,access_name)
end

#By CSS
Then(/^I select "(.*?)" option by text from radio button group with css "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("css","text",option,access_name)
end

#steps to select option by value from radio button group 
#By ID
Then(/^I select "(.*?)" option by value from radio button group with id "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("id","value",option,access_name)
end

#By NAME
Then(/^I select "(.*?)" option by value from radio button group with name "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("name","value",option,access_name)
end

#By CLASS
Then(/^I select "(.*?)" option by value from radio button group with class "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("class","value",option,access_name)
end

#By XPATH
Then(/^I select "(.*?)" option by value from radio button group with xpath "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("xpath","value",option,access_name)
end

#By CSS
Then(/^I select "(.*?)" option by value from radio button group with css "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("css","value",option,access_name)
end
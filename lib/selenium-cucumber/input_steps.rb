require_relative 'methods/input_methods'

#enter text into input field steps

#By ID
Then(/^I enter "([^\"]*)" into input field having id "([^\"]*)"$/) do |text, access_name|
	enter_text("id",text,access_name)
end

#By NAME
Then(/^I enter "([^\"]*)" into input field having name "([^\"]*)"$/) do |text, access_name|
	enter_text("name",text,access_name)
end

#By CLASS
Then(/^I enter "([^\"]*)" into input field having class "([^\"]*)"$/) do |text, access_name|
	enter_text("class",text,access_name)
end

#By XPATH
Then(/^I enter "([^\"]*)" into input field having xpath "([^\"]*)"$/) do |text, access_name|
	enter_text("xpath",text,access_name)
end

#By CSS
Then(/^I enter "([^\"]*)" into input field having css "([^\"]*)"$/) do |text, access_name|
	enter_text("css",text,access_name)
end

#clear input field steps

#By ID
Then(/^I clear input field having id "([^\"]*)"$/) do |access_name|
	clear_text("id",access_name)
end

#By NAME
Then(/^I clear input field having name "([^\"]*)"$/) do |access_name|
	clear_text("name",access_name)
end

#By CLASS
Then(/^I clear input field having class "([^\"]*)"$/) do |access_name|
	clear_text("class",access_name)
end

#By XPATH
Then(/^I clear input field having xpath "([^\"]*)"$/) do |access_name|
	clear_text("xpath",access_name)
end

#By CSS
Then(/^I clear input field having css "([^\"]*)"$/) do |access_name|
	clear_text("css",access_name)
end


#select option by text from Drop down list 
#By TEXT
#By ID
Then(/^I select "(.*?)" option by text from dropdown having id "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("id","text",option,access_name)
end

#By NAME
Then(/^I select "(.*?)" option by text from dropdown having name "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("name","text",option,access_name)
end

#By CLASS
Then(/^I select "(.*?)" option by text from dropdown having class "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("class","text",option,access_name)
end

#By XPATH
Then(/^I select "(.*?)" option by text from dropdown having xpath "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("xpath","text",option,access_name)
end

#By CSS
Then(/^I select "(.*?)" option by text from dropdown having css "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("css","text",option,access_name)
end

#select option by index from Drop down list 
#By INDEX
#By ID
Then(/^I select (\d+) option by index from dropdown having id "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("id","index",option,access_name)
end

#By NAME
Then(/^I select (\d+) option by index from dropdown having name "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("name","index",option,access_name)
end

#By CLASS
Then(/^I select (\d+) option by index from dropdown having class "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("class","index",option,access_name)
end

#By XPATH
Then(/^I select (\d+) option by index from dropdown having xpath "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("xpath","index",option,access_name)
end

#By CSS
Then(/^I select (\d+) option by index from dropdown having css "(.*?)"$/) do |option, access_name|
  	select_option_from_dropdown("css","index",option,access_name)
end

#select option by value from Drop down list 
#By VALUE
#By ID
Then(/^I select "(.*?)" option by value from dropdown having id "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("id","value",option,access_name)
end

#By NAME
Then(/^I select "(.*?)" option by value from dropdown having name "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("name","value",option,access_name)
end

#By CLASS
Then(/^I select "(.*?)" option by value from dropdown having class "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("class","value",option,access_name)
end

#By XPATH
Then(/^I select "(.*?)" option by value from dropdown having xpath "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("xpath","value",option,access_name)
end

#By CSS
Then(/^I select "(.*?)" option by value from dropdown having css "(.*?)"$/) do |option, access_name|
	select_option_from_dropdown("css","value",option,access_name)
end


#unselect option from dropdown list

#By ID
Then(/^I unselect options from dropdown having id "(.*?)"$/) do |access_name|
	unselect_option_from_dropdown("id", access_name)
end

#By NAME
Then(/^I unselect options from dropdown having name "(.*?)"$/) do |access_name|
  	unselect_option_from_dropdown("name", access_name)
end

#By CLASS
Then(/^I unselect options from dropdown having class "(.*?)"$/) do |access_name|
	unselect_option_from_dropdown("class", access_name)
end

#By XPATH
Then(/^I unselect options from dropdown having xpath "(.*?)"$/) do |access_name|
	unselect_option_from_dropdown("xpath", access_name)
end

#By CSS
Then(/^I unselect options from dropdown having css "(.*?)"$/) do |access_name|
	unselect_option_from_dropdown("css", access_name)
end

#check checkbox steps
#By ID
Then(/^I check checkbox having id "(.*?)"$/) do |access_name|
  check_checkbox("id",access_name)
end

#By NAME
Then(/^I check checkbox having name "(.*?)"$/) do |access_name|
  check_checkbox("name",access_name)
end

#By CLASS
Then(/^I check checkbox having class "(.*?)"$/) do |access_name|
  check_checkbox("class",access_name)
end

#By XPATH
Then(/^I check checkbox having xpath "(.*?)"$/) do |access_name|
  check_checkbox("xpath",access_name)
end

#By CSS
Then(/^I check checkbox having css "(.*?)"$/) do |access_name|
  check_checkbox("css",access_name)
end

#uncheck checkbox steps
#By ID
Then(/^I uncheck checkbox having id "(.*?)"$/) do |access_name|
  uncheck_checkbox("id",access_name)
end

#By NAME
Then(/^I uncheck checkbox having name "(.*?)"$/) do |access_name|
  uncheck_checkbox("name",access_name)
end

#By CLASS
Then(/^I uncheck checkbox having class "(.*?)"$/) do |access_name|
  uncheck_checkbox("class",access_name)
end

#By XPATH
Then(/^I uncheck checkbox having xpath "(.*?)"$/) do |access_name|
  uncheck_checkbox("xpath",access_name)
end

#By CSS
Then(/^I uncheck checkbox having css "(.*?)"$/) do |access_name|
  uncheck_checkbox("css",access_name)
end

#Steps to toggle checkbox
#By ID
Then(/^toggle checkbox having id "(.*?)"$/) do |access_name|
  toggle_checkbox("id",access_name)
end

#By NAME
Then(/^toggle checkbox having name "(.*?)"$/) do |access_name|
  toggle_checkbox("name",access_name)
end

#By CLASS
Then(/^toggle checkbox having class "(.*?)"$/) do |access_name|
  toggle_checkbox("class",access_name)
end

#By XPATH
Then(/^toggle checkbox having xpath "(.*?)"$/) do |access_name|
  toggle_checkbox("xpath",access_name)
end

#By CSS
Then(/^toggle checkbox having css "(.*?)"$/) do |access_name|
  toggle_checkbox("css",access_name)
end

#radio button select steps
#By ID
Then(/^I select radio button having id "(.*?)"$/) do |access_name|
  select_radio_button("id",access_name)
end

#By NAME
Then(/^I select radio button having name "(.*?)"$/) do |access_name|
  select_radio_button("name",access_name)
end

#By CLASS
Then(/^I select radio button having class "(.*?)"$/) do |access_name|
  select_radio_button("class",access_name)
end

#By XPATH
Then(/^I select radio button having xpath "(.*?)"$/) do |access_name|
  select_radio_button("xpath",access_name)
end

#By CSS
Then(/^I select radio button having css "(.*?)"$/) do |access_name|
  select_radio_button("css",access_name)
end


#steps to select option by text from radio button group 
#By ID
Then(/^I select "(.*?)" option by text from radio button group having id "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("id","text",option,access_name)
end

#By NAME
Then(/^I select "(.*?)" option by text from radio button group having name "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("name","text",option,access_name)
end

#By CLASS
Then(/^I select "(.*?)" option by text from radio button group having class "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("class","text",option,access_name)
end

#By XPATH
Then(/^I select "(.*?)" option by text from radio button group having xpath "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("xpath","text",option,access_name)
end

#By CSS
Then(/^I select "(.*?)" option by text from radio button group having css "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("css","text",option,access_name)
end

#steps to select option by value from radio button group 
#By ID
Then(/^I select "(.*?)" option by value from radio button group having id "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("id","value",option,access_name)
end

#By NAME
Then(/^I select "(.*?)" option by value from radio button group having name "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("name","value",option,access_name)
end

#By CLASS
Then(/^I select "(.*?)" option by value from radio button group having class "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("class","value",option,access_name)
end

#By XPATH
Then(/^I select "(.*?)" option by value from radio button group having xpath "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("xpath","value",option,access_name)
end

#By CSS
Then(/^I select "(.*?)" option by value from radio button group having css "(.*?)"$/) do |option, access_name|
  select_option_from_radio_button_group("css","value",option,access_name)
end
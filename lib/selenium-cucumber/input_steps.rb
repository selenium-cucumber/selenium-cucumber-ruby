require_relative 'methods/input_methods'

#enter text into input field steps

Then(/^I enter "([^\"]*)" into input field having (.+) "([^\"]*)"$/) do |text, type, access_name|
	validate_locator type
  enter_text(type,text,access_name)
end


#clear input field steps

Then(/^I clear input field having (.+) "([^\"]*)"$/) do |type, access_name|
  validate_locator type
	clear_text(type, access_name)
end


#select option by text from dropdown/multiselect

Then(/^I select "(.*?)" option by (.+) from dropdown having (.+) "(.*?)"$/) do |option,option_by, type, access_name|
	validate_locator type
  validate_option_by option_by
  select_option_from_dropdown(type, option_by,option,access_name)
end


#unselect option from dropdown list

Then(/^I unselect options from dropdown having (.+) "(.*?)"$/) do |type,access_name|
	validate_locator type
  unselect_option_from_dropdown(type, access_name)
end


#check checkbox steps

Then(/^I check checkbox having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  check_checkbox(type, access_name)
end

#uncheck checkbox steps

Then(/^I uncheck checkbox having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  uncheck_checkbox(type,access_name)
end


#Steps to toggle checkbox

Then(/^toggle checkbox having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  toggle_checkbox(type,access_name)
end


#radio button select step

Then(/^I select radio button having (.+) "(.*?)"$/) do |type,access_name|
  validate_locator type
  select_radio_button(type,access_name)
end


#steps to select option by text from radio button group 

Then(/^I select "(.*?)" option by (.+) from radio button group having (.+) "(.*?)"$/) do |option,option_by, type, access_name|
  validate_locator type
  validate_option_by option_by
  select_option_from_radio_button_group(type,option_by,option,access_name)
end

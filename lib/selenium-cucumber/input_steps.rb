require_relative 'methods/input_methods'

# enter text into input field steps
Then(/^I enter "([^\"]*)" into input field having (.+) "([^\"]*)"$/) do |text, type, access_name|
  validate_locator type
  enter_text(type, text, access_name)
end

# clear input field steps
Then(/^I clear input field having (.+) "([^\"]*)"$/) do |type, access_name|
  validate_locator type
  clear_text(type, access_name)
end

# select option by text/value from dropdown/multiselect
Then(/^I select "(.*?)" option by (.+) from\s*((?:multiselect)?)\sdropdown having (.+) "(.*?)"$/) do |option, option_by, present, type, access_name|
  validate_locator type
  validate_option_by option_by
  select_option_from_dropdown(type, option_by, option, access_name)
end

# select option by index from dropdown/multiselect
Then(/^I select (\d+) option by index from\s*((?:multiselect)?)\sdropdown having (.+) "(.*?)"$/) do |option, present, type, access_name|
  validate_locator type
  select_option_from_dropdown(type, 'index', (option.to_i) -1, access_name)
end

# step to select option from mutliselect dropdown list
Then(/^I select all options from multiselect dropdown having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  select_all_option_from_multiselect_dropdown(type, access_name)
end

# step to unselect option from mutliselect dropdown list
Then(/^I unselect all options from multiselect dropdown having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  unselect_all_option_from_multiselect_dropdown(type, access_name)
end

# check checkbox steps
Then(/^I check the checkbox having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  check_checkbox(type, access_name)
end

# uncheck checkbox steps
Then(/^I uncheck the checkbox having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  uncheck_checkbox(type, access_name)
end

# steps to toggle checkbox
Then(/^I toggle checkbox having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  toggle_checkbox(type, access_name)
end

# step to select radio button
Then(/^I select radio button having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  select_radio_button(type, access_name)
end

# steps to select option by text from radio button group
Then(/^I select "(.*?)" option by (.+) from radio button group having (.+) "(.*?)"$/) do |option, option_by, type, access_name|
  validate_locator type
  validate_option_by option_by
  select_option_from_radio_button_group(type, option_by, option, access_name)
end

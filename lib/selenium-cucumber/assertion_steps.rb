require_relative 'methods/assertion_methods'

#Page title checking
Then(/^I see page title as "(.*?)"$/) do |title|
  	check_title(title)
end

#Check element text steps : positive test

#By ID
Then(/^I should see text as "(.*?)" for element with id "(.*?)"$/) do |actual_value , access_name|
  check_element_text("id", actual_value, access_name, true)
end

#By CLASS
Then(/^I should see text as "(.*?)" for element with class "(.*?)"$/) do |actual_value , access_name|
  check_element_text("class", actual_value, access_name, true)
end

#By NAME
Then(/^I should see text as "(.*?)" for element with name "(.*?)"$/) do |actual_value , access_name|
  check_element_text("name", actual_value, access_name, true)
end

#By XPATH
Then(/^I should see text as "(.*?)" for element with xpath "(.*?)"$/) do |actual_value , access_name|
  check_element_text("xpath", actual_value, access_name, true)
end

#By CSS
Then(/^I should see text as "(.*?)" for element with css "(.*?)"$/) do |actual_value , access_name|
  check_element_text("css", actual_value, access_name, true)
end

# check element text steps : negative test

#By ID
Then(/^I should not see text as "(.*?)" for element with id "(.*?)"$/) do |actual_value , access_name|
  check_element_text("id", actual_value, access_name, false)
end

#By CLASS
Then(/^I should not see text as "(.*?)" for element with class "(.*?)"$/) do |actual_value , access_name|
  check_element_text("class", actual_value, access_name, false)
end

#By NAME
Then(/^I should not see text as "(.*?)" for element with name "(.*?)"$/) do |actual_value , access_name|
  check_element_text("name", actual_value, access_name, false)
end

#By XPATH
Then(/^I should not see text as "(.*?)" for element with xpath "(.*?)"$/) do |actual_value , access_name|
  check_element_text("xpath", actual_value, access_name, false)
end

#By CSS
Then(/^I should not see text as "(.*?)" for element with css "(.*?)"$/) do |actual_value , access_name|
  check_element_text("css", actual_value, access_name, false)
end

# To check attribute value - positive test

#By ID
Then(/^I should see attribute "(.*?)" with value "(.*?)" for element with id "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("id", attribute_name , attribute_value, access_name, true)
end

#By CLASS
Then(/^I should see attribute "(.*?)" with value "(.*?)" for element with class "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("class", attribute_name , attribute_value, access_name, true)
end

#By NAME
Then(/^I should see attribute "(.*?)" with value "(.*?)" for element with name "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("name", attribute_name , attribute_value, access_name, true)
end

#By XPATH
Then(/^I should see attribute "(.*?)" with value "(.*?)" for element with xpath "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("xpath", attribute_name , attribute_value, access_name, true)
end

#By CSS
Then(/^I should see attribute "(.*?)" with value "(.*?)" for element with css "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("css", attribute_name , attribute_value, access_name, true)
end

# To check attribute value - negative test

#By ID
Then(/^I should not see attribute "(.*?)" with value "(.*?)" for element with id "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("id", attribute_name , attribute_value, access_name, false)
end

#By CLASS
Then(/^I should not see attribute "(.*?)" with value "(.*?)" for element with class "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("class", attribute_name , attribute_value, access_name, false)
end

#By NAME
Then(/^I should not see attribute "(.*?)" with value "(.*?)" for element with name "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("name", attribute_name , attribute_value, access_name, false)
end

#By XPATH
Then(/^I should not see attribute "(.*?)" with value "(.*?)" for element with xpath "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("xpath", attribute_name , attribute_value, access_name, false)
end

#By CSS
Then(/^I should not see attribute "(.*?)" with value "(.*?)" for element with css "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("css", attribute_name , attribute_value, access_name, false)
end

#Element enabled checking - Positive test
#By ID
Then(/^element with id "([^\"]*)" should enable$/) do |access_name|
  	check_element_enable("id", access_name, true)
end

#By NAME
Then(/^element with name "([^\"]*)" should enable$/) do |access_name|
  	check_element_enable("name", access_name, true)
end

#By CLASS
Then(/^element with class "([^\"]*)" should enable$/) do |access_name|
    check_element_enable("class", access_name, true)
end

#By XPATH
Then(/^element with xpath "([^\"]*)" should enable$/) do |access_name|
  	check_element_enable("xpath", access_name, true)
end

#By CSS
Then(/^element with css "([^\"]*)" should enable$/) do |access_name|
    check_element_enable("css", access_name, true)
end


#Element disabled checking - Negative test
#By ID
Then(/^element with id "([^\"]*)" should disable$/) do |access_name|
  	check_element_enable("id", access_name, false)
end

#By NAME
Then (/^element with name "([^\"]*)" should disable$/) do |access_name|
  	check_element_enable("name", access_name, false)
end

#By CLASS
Then (/^element with class "([^\"]*)" should disable$/) do |access_name|
    check_element_enable("class", access_name, false)
end

#By XPATH
Then (/^element with xpath "([^\"]*)" should disable$/) do |access_name|
  	check_element_enable("xpath", access_name, false)
end

#By CSS
Then (/^element with css "([^\"]*)" should disable$/) do |access_name|
    check_element_enable("css", access_name, false)
end

#element presence - positive test
Then(/^I should see element present with id "(.*?)"$/) do |access_name|
    check_element_presence("id", access_name, true)
end

Then(/^I should see element present with name "(.*?)"$/) do |access_name|
    check_element_presence("name", access_name, true)
end

Then(/^I should see element present with class "(.*?)"$/) do |access_name|
    check_element_presence("class", access_name, true)
end

Then(/^I should see element present with xpath "(.*?)"$/) do |access_name|
    check_element_presence("xpath", access_name, true)
end

Then(/^I should see element present with css "(.*?)"$/) do |access_name|
    check_element_presence("css", access_name, true)
end

#element presence - negative test

Then(/^I should not see element present with id "(.*?)"$/) do |access_name|
    check_element_presence("id", access_name, false)
end

Then(/^I should not see element present with name "(.*?)"$/) do |access_name|
    check_element_presence("name", access_name, false)
end

Then(/^I should not see element present with class "(.*?)"$/) do |access_name|
    check_element_presence("class", access_name, false)
end

Then(/^I should not see element present with xpath "(.*?)"$/) do |access_name|
    check_element_presence("xpath", access_name, false)
end

Then(/^I should not see element present with css "(.*?)"$/) do |access_name|
    check_element_presence("css", access_name, false)
end


#assert check box is checked
#By ID
Then(/^I should see checkbox with id "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("id",access_name)
end

#By NAME
Then(/^I should see checkbox with name "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("name",access_name)
end

#By CLASS
Then(/^I should see checkbox with class "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("class",access_name)
end

#By XPATH
Then(/^I should see checkbox with xpath "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("xpath",access_name)
end

#By CSS
Then(/^I should see checkbox with css "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("css",access_name)
end

#assert check box is unchecked
#By ID
Then(/^I should see checkbox with id "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("id",access_name)
end

#By NAME
Then(/^I should see checkbox with name "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("name",access_name)
end

#By CLASS
Then(/^I should see checkbox with class "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("class",access_name)
end

#By XPATH
Then(/^I should see checkbox with xpath "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("xpath",access_name)
end

#By CSS
Then(/^I should see checkbox with css "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("css",access_name)
end

#steps to assert radio button checked
#By ID
Then(/^I should see radio button with id "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("id",access_name)
end

#By NAME
Then(/^I should see radio button with name "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("name",access_name)
end

#By CLASS
Then(/^I should see radio button with class "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("class",access_name)
end

#By XPATH
Then(/^I should see radio button with xpath "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("xpath",access_name)
end

#By CSS
Then(/^I should see radio button with css "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("css",access_name)
end

#steps to assert radio button checked
#By ID
Then(/^I should see radio button with id "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("id",access_name)
end

#By NAME
Then(/^I should see radio button with name "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("name",access_name)
end

#By CLASS
Then(/^I should see radio button with class "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("class",access_name)
end

#By XPATH
Then(/^I should see radio button with xpath "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("xpath",access_name)
end

#By CSS
Then(/^I should see radio button with css "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("css",access_name)
end

#steps to assert option by text from radio button group selected
#By ID
Then(/^I should see "(.*?)" option by text from radio button group with id "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("id","text",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by text from radio button group with name "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("name","text",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by text from radio button group with class "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("class","text",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by text from radio button group with xpath "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("xpath","text",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by text from radio button group with css "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("css","text",option,access_name)
end

#steps to assert option by value from radio button group selected
#By ID
Then(/^I should see "(.*?)" option by value from radio button group with id "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("id","value",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by value from radio button group with name "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("name","value",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by value from radio button group with class "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("class","value",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by value from radio button group with xpath "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("xpath","value",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by value from radio button group with css "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("css","value",option,access_name)
end

#steps to assert option by text from radio button group not selected
#By ID
Then(/^I should see "(.*?)" option by text from radio button group with id "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("id","text",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by text from radio button group with name "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("name","text",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by text from radio button group with class "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("class","text",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by text from radio button group with xpath "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("xpath","text",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by text from radio button group with css "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("css","text",option,access_name)
end

#steps to assert option by value from radio button group not selected
#By ID
Then(/^I should see "(.*?)" option by value from radio button group with id "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("id","value",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by value from radio button group with name "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("name","value",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by value from radio button group with class "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("class","value",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by value from radio button group with xpath "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("xpath","value",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by value from radio button group with css "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("css","value",option,access_name)
end
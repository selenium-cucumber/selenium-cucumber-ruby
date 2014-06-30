require_relative 'methods/assertion_methods'

#Page title checking
Then(/^I see page title as "(.*?)"$/) do |title|
  	check_title(title)
end

#Check element text steps : positive test

#By ID
Then(/^I should see text as "(.*?)" for element having id "(.*?)"$/) do |actual_value , access_name|
  check_element_text("id", actual_value, access_name, true)
end

#By CLASS
Then(/^I should see text as "(.*?)" for element having class "(.*?)"$/) do |actual_value , access_name|
  check_element_text("class", actual_value, access_name, true)
end

#By NAME
Then(/^I should see text as "(.*?)" for element having name "(.*?)"$/) do |actual_value , access_name|
  check_element_text("name", actual_value, access_name, true)
end

#By XPATH
Then(/^I should see text as "(.*?)" for element having xpath "(.*?)"$/) do |actual_value , access_name|
  check_element_text("xpath", actual_value, access_name, true)
end

#By CSS
Then(/^I should see text as "(.*?)" for element having css "(.*?)"$/) do |actual_value , access_name|
  check_element_text("css", actual_value, access_name, true)
end

# check element text steps : negative test

#By ID
Then(/^I should not see text as "(.*?)" for element having id "(.*?)"$/) do |actual_value , access_name|
  check_element_text("id", actual_value, access_name, false)
end

#By CLASS
Then(/^I should not see text as "(.*?)" for element having class "(.*?)"$/) do |actual_value , access_name|
  check_element_text("class", actual_value, access_name, false)
end

#By NAME
Then(/^I should not see text as "(.*?)" for element having name "(.*?)"$/) do |actual_value , access_name|
  check_element_text("name", actual_value, access_name, false)
end

#By XPATH
Then(/^I should not see text as "(.*?)" for element having xpath "(.*?)"$/) do |actual_value , access_name|
  check_element_text("xpath", actual_value, access_name, false)
end

#By CSS
Then(/^I should not see text as "(.*?)" for element having css "(.*?)"$/) do |actual_value , access_name|
  check_element_text("css", actual_value, access_name, false)
end

# To check attribute value - positive test

#By ID
Then(/^I should see attribute "(.*?)" having value "(.*?)" for element having id "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("id", attribute_name , attribute_value, access_name, true)
end

#By CLASS
Then(/^I should see attribute "(.*?)" having value "(.*?)" for element having class "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("class", attribute_name , attribute_value, access_name, true)
end

#By NAME
Then(/^I should see attribute "(.*?)" having value "(.*?)" for element having name "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("name", attribute_name , attribute_value, access_name, true)
end

#By XPATH
Then(/^I should see attribute "(.*?)" having value "(.*?)" for element having xpath "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("xpath", attribute_name , attribute_value, access_name, true)
end

#By CSS
Then(/^I should see attribute "(.*?)" having value "(.*?)" for element having css "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("css", attribute_name , attribute_value, access_name, true)
end

# To check attribute value - negative test

#By ID
Then(/^I should not see attribute "(.*?)" having value "(.*?)" for element having id "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("id", attribute_name , attribute_value, access_name, false)
end

#By CLASS
Then(/^I should not see attribute "(.*?)" having value "(.*?)" for element having class "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("class", attribute_name , attribute_value, access_name, false)
end

#By NAME
Then(/^I should not see attribute "(.*?)" having value "(.*?)" for element having name "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("name", attribute_name , attribute_value, access_name, false)
end

#By XPATH
Then(/^I should not see attribute "(.*?)" having value "(.*?)" for element having xpath "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("xpath", attribute_name , attribute_value, access_name, false)
end

#By CSS
Then(/^I should not see attribute "(.*?)" having value "(.*?)" for element having css "(.*?)"$/) do |attribute_name , attribute_value , access_name|
  check_element_attribute("css", attribute_name , attribute_value, access_name, false)
end

#Element enabled checking - Positive test
#By ID
Then(/^element having id "([^\"]*)" should enable$/) do |access_name|
  	check_element_enable("id", access_name, true)
end

#By NAME
Then(/^element having name "([^\"]*)" should enable$/) do |access_name|
  	check_element_enable("name", access_name, true)
end

#By CLASS
Then(/^element having class "([^\"]*)" should enable$/) do |access_name|
    check_element_enable("class", access_name, true)
end

#By XPATH
Then(/^element having xpath "([^\"]*)" should enable$/) do |access_name|
  	check_element_enable("xpath", access_name, true)
end

#By CSS
Then(/^element having css "([^\"]*)" should enable$/) do |access_name|
    check_element_enable("css", access_name, true)
end


#Element disabled checking - Negative test
#By ID
Then(/^element having id "([^\"]*)" should disable$/) do |access_name|
  	check_element_enable("id", access_name, false)
end

#By NAME
Then (/^element having name "([^\"]*)" should disable$/) do |access_name|
  	check_element_enable("name", access_name, false)
end

#By CLASS
Then (/^element having class "([^\"]*)" should disable$/) do |access_name|
    check_element_enable("class", access_name, false)
end

#By XPATH
Then (/^element having xpath "([^\"]*)" should disable$/) do |access_name|
  	check_element_enable("xpath", access_name, false)
end

#By CSS
Then (/^element having css "([^\"]*)" should disable$/) do |access_name|
    check_element_enable("css", access_name, false)
end

#element presence - positive test
Then(/^I should see element present having id "(.*?)"$/) do |access_name|
    check_element_presence("id", access_name, true)
end

Then(/^I should see element present having name "(.*?)"$/) do |access_name|
    check_element_presence("name", access_name, true)
end

Then(/^I should see element present having class "(.*?)"$/) do |access_name|
    check_element_presence("class", access_name, true)
end

Then(/^I should see element present having xpath "(.*?)"$/) do |access_name|
    check_element_presence("xpath", access_name, true)
end

Then(/^I should see element present having css "(.*?)"$/) do |access_name|
    check_element_presence("css", access_name, true)
end

#element presence - negative test

Then(/^I should not see element present having id "(.*?)"$/) do |access_name|
    check_element_presence("id", access_name, false)
end

Then(/^I should not see element present having name "(.*?)"$/) do |access_name|
    check_element_presence("name", access_name, false)
end

Then(/^I should not see element present having class "(.*?)"$/) do |access_name|
    check_element_presence("class", access_name, false)
end

Then(/^I should not see element present having xpath "(.*?)"$/) do |access_name|
    check_element_presence("xpath", access_name, false)
end

Then(/^I should not see element present having css "(.*?)"$/) do |access_name|
    check_element_presence("css", access_name, false)
end


#assert check box is checked
#By ID
Then(/^I should see checkbox having id "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("id",access_name)
end

#By NAME
Then(/^I should see checkbox having name "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("name",access_name)
end

#By CLASS
Then(/^I should see checkbox having class "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("class",access_name)
end

#By XPATH
Then(/^I should see checkbox having xpath "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("xpath",access_name)
end

#By CSS
Then(/^I should see checkbox having css "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("css",access_name)
end

#assert check box is unchecked
#By ID
Then(/^I should see checkbox having id "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("id",access_name)
end

#By NAME
Then(/^I should see checkbox having name "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("name",access_name)
end

#By CLASS
Then(/^I should see checkbox having class "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("class",access_name)
end

#By XPATH
Then(/^I should see checkbox having xpath "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("xpath",access_name)
end

#By CSS
Then(/^I should see checkbox having css "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("css",access_name)
end

#steps to assert radio button checked
#By ID
Then(/^I should see radio button having id "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("id",access_name)
end

#By NAME
Then(/^I should see radio button having name "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("name",access_name)
end

#By CLASS
Then(/^I should see radio button having class "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("class",access_name)
end

#By XPATH
Then(/^I should see radio button having xpath "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("xpath",access_name)
end

#By CSS
Then(/^I should see radio button having css "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("css",access_name)
end

#steps to assert radio button checked
#By ID
Then(/^I should see radio button having id "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("id",access_name)
end

#By NAME
Then(/^I should see radio button having name "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("name",access_name)
end

#By CLASS
Then(/^I should see radio button having class "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("class",access_name)
end

#By XPATH
Then(/^I should see radio button having xpath "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("xpath",access_name)
end

#By CSS
Then(/^I should see radio button having css "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("css",access_name)
end

#steps to assert option by text from radio button group selected
#By ID
Then(/^I should see "(.*?)" option by text from radio button group having id "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("id","text",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by text from radio button group having name "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("name","text",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by text from radio button group having class "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("class","text",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by text from radio button group having xpath "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("xpath","text",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by text from radio button group having css "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("css","text",option,access_name)
end

#steps to assert option by value from radio button group selected
#By ID
Then(/^I should see "(.*?)" option by value from radio button group having id "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("id","value",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by value from radio button group having name "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("name","value",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by value from radio button group having class "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("class","value",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by value from radio button group having xpath "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("xpath","value",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by value from radio button group having css "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("css","value",option,access_name)
end

#steps to assert option by text from radio button group not selected
#By ID
Then(/^I should see "(.*?)" option by text from radio button group having id "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("id","text",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by text from radio button group having name "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("name","text",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by text from radio button group having class "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("class","text",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by text from radio button group having xpath "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("xpath","text",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by text from radio button group having css "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("css","text",option,access_name)
end

#steps to assert option by value from radio button group not selected
#By ID
Then(/^I should see "(.*?)" option by value from radio button group having id "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("id","value",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by value from radio button group having name "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("name","value",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by value from radio button group having class "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("class","value",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by value from radio button group having xpath "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("xpath","value",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by value from radio button group having css "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("css","value",option,access_name)
end
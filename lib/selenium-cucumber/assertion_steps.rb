require_relative 'methods/assertion_methods'

# page title checking
Then(/^I should\s*((?:not)?)\s+see page title as "(.*?)"$/) do |present, title|
  check_title(title, present.empty?)
end

Then(/^I should\s*((?:not)?)\s+see page title having partial text as "(.*?)"$/) do |present, partial_text_title|
  check_partial_title(partial_text_title, present.empty?)
end

# step to check element text
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+have text as "(.*?)"$/) do |type, access_name, present, value |
  validate_locator type
  check_element_text(type, value, access_name, present.empty?)
end

# step to check element partial text
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+have partial text as "(.*?)"$/) do |type, access_name, present, value |
  validate_locator type
  check_element_partial_text(type, value, access_name, present.empty?)
end

# step to check attribute value
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+have attribute "(.*?)" with value "(.*?)"$/) do |type, access_name, present, attrb, value|
  validate_locator type
  check_element_attribute(type, attrb, value, access_name, present.empty?)
end

# step to check element enabled or not
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+be (enabled|disabled)$/) do |type, access_name, present, state|
  validate_locator type
  flag = state == 'enabled'
  flag = !flag unless present.empty?
  check_element_enable(type, access_name, flag)
end

# step to check element present or not
Then(/^element having (.+) "(.*?)" should\s*((?:not)?)\s+be present$/) do |type, access_name, present|
  validate_locator type
  check_element_presence(type, access_name, present.empty?)
end

# step to assert checkbox is checked or unchecked
Then(/^checkbox having (.+) "(.*?)" should be (checked|unchecked)$/) do |type, access_name, state|
  validate_locator type
  flag = state == 'checked'
  is_checkbox_checked(type, access_name, flag)
end

# steps to assert radio button checked or unchecked
Then(/^radio button having (.+) "(.*?)" should be (selected|unselected)$/) do |type, access_name, state|
  validate_locator type
  flag = state == 'selected'
  is_radio_button_selected(type, access_name, flag)
end

# steps to assert option by text from radio button group selected/unselected
Then(/^option "(.*?)" by (.+) from radio button group having (.+) "(.*?)" should be (selected|unselected)$/) do |option, attrb, type, access_name, state|
  validate_locator type
  flag = state == 'selected'
  is_option_from_radio_button_group_selected(type, attrb, option, access_name, flag)
end

# steps to check link presence
Then(/^link having text "(.*?)" should\s*((?:not)?)\s+be present$/) do |access_name, present|
  check_element_presence('link', access_name, present.empty?)
end

Then(/^link having partial text "(.*?)" should\s*((?:not)?)\s+be present$/) do |access_name, present|
  check_element_presence('partial_link_text', access_name, present.empty?)
end

# step to assert javascript pop-up alert text
Then(/^I should see alert text as "(.*?)"$/) do |actual_value|
  check_alert_text(actual_value)
end

Then(/^I link having text "(.*?)" should\s*((?:not)?)\s+be present$/) do |access_name, present|
  check_element_presence('link', access_name, present.empty?)
end

# step to assert dropdown list
Then(/^option "(.*?)" by (.+) from dropdown having (.+) "(.*?)" should be (selected|unselected)$/) do |option, by, type, access_name, state|
  validate_locator type
  flag = state == 'selected'
  is_option_from_dropdown_selected(type, by, option, access_name, state)
end

# step to assert difference in images
Then(/^actual image having (.+) "(.*?)" and expected image having (.+) "(.*?)" should be similar$/) do |actual_img_access_type, actual_img_access_name, excp_img_access_type, excp_img_access_name|
  does_images_similar?(actual_img_access_type, actual_img_access_name, excp_img_access_type, excp_img_access_name)
end



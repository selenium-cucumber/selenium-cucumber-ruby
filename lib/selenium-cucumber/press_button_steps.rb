require_relative 'methods/press_button_methods'

# click on web element

When(/^I click on element having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  click(type,access_name)
end


#steps to click on link

Then(/^I click on link having text "(.*?)"$/) do |access_name|
    click("link",access_name)
end

Then(/^I click on link having partial text "(.*?)"$/) do |access_name|
    click("partial_link_text",access_name)
end
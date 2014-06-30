require_relative 'methods/press_button_methods'

# click on web element
#By ID
When(/^I click on element having id "(.*?)"$/) do |access_name|
  click("id",access_name)
end

#By NAME
When(/^I click on element having name "(.*?)"$/) do |access_name|
  click("name",access_name)
end

#By CLASS
When(/^I click on element having class "(.*?)"$/) do |access_name|
  click("class",access_name)
end

#By XPATH
When(/^I click on element having xpath "(.*?)"$/) do |access_name|
  click("xpath",access_name)
end

#By CSS
When(/^I click on element having css "(.*?)"$/) do |access_name|
  click("css",access_name)
end

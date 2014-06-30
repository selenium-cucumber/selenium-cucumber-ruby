require_relative 'methods/press_button_methods'

# click on web element
#By ID
When(/^I click on element with id "(.*?)"$/) do |access_name|
  click("id",access_name)
end

#By NAME
When(/^I click on element with name "(.*?)"$/) do |access_name|
  click("name",access_name)
end

#By CLASS
When(/^I click on element with class "(.*?)"$/) do |access_name|
  click("class",access_name)
end

#By XPATH
When(/^I click on element with xpath "(.*?)"$/) do |access_name|
  click("xpath",access_name)
end

#By CSS
When(/^I click on element with css "(.*?)"$/) do |access_name|
  click("css",access_name)
end

require_relative 'methods/press_button_methods'

When(/^I click on element with id "(.*?)"$/) do |element_id|
  click("id",element_id)
end

When(/^I click on element with name "(.*?)"$/) do |element_name|
  click("name",element_name)
end

When(/^I click on element with xpath "(.*?)"$/) do |element_xpath|
  click("xpath",element_xpath)
end

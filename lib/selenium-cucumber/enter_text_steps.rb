require_relative 'methods/enter_text_methods'

#input field
Then /^I enter "([^\"]*)" into input field with id "([^\"]*)"$/ do |text, id|
	enter_text("id",text,id)
end

Then /^I enter "([^\"]*)" into input field with name "([^\"]*)"$/ do |text, name|
	enter_text("name",text,name)
end

Then /^I enter "([^\"]*)" into input field with xpath "([^\"]*)"$/ do |text, xpath|
	enter_text("xpath",text,xpath)
end

Then /^I clear input field with id "([^\"]*)"$/ do |id|
	clear_text("id",id)
end

Then /^I clear input field with name "([^\"]*)"$/ do |name|
	clear_text("name",name)
end

Then /^I clear input field with xpath "([^\"]*)"$/ do |xpath|
	clear_text("xpath",xpath)
end


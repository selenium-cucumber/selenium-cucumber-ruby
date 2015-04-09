require 'selenium-cucumber'

Given(/^I am on home page of Hindu Calender$/) do
  step %[element having id "android:id/action_bar_title" should have text as "Hindu Calendar"]
end

Then(/^I should see Month View option$/) do
  step %[element having xpath "//android.widget.TextView[@text='Month View']" should have text as "Month View"]
end

Then(/^I should see Panchang option$/) do
  step %[element having xpath "//android.widget.TextView[@text='Panchang']" should have text as "Panchang"]
end

Then(/^I should see Kundli option$/) do
  step %[element having xpath "//android.widget.TextView[@text='Kundli']" should have text as "Kundli"]
end

Then(/^I should see Jyotish option$/) do
  step %[element having xpath "//android.widget.TextView[@text='Jyotish']" should have text as "Jyotish"]
end

Then(/^I should see Festivals option$/) do
  step %[element having xpath "//android.widget.TextView[@text='Festivals']" should have text as "Festivals"]
end

Then(/^I should see My Tithi option$/) do
  step %[element having xpath "//android.widget.TextView[@text='My Tithi']" should have text as "My Tithi"]
end

Then(/^I should see Settings option$/) do
  step %[element having xpath "//android.widget.TextView[@text='Settings']" should have text as "Settings"]
end

Then(/^I should see Info option$/) do
  step %[element having xpath "//android.widget.TextView[@text='Info']" should have text as "Info"]
end

Then(/^I should see About option$/) do
  step %[element having xpath "//android.widget.TextView[@text='About']" should have text as "About"]
end

Then(/^I should see Feedback option$/) do
  step %[element having xpath "//android.widget.TextView[@text='Feedback']" should have text as "Feedback"]
end

Then(/^I should see Hambergur menu$/) do
  step %[element having id "android:id/up" should be present]
end

Then(/^I should see Swistik image$/) do
  step %[element having id "android:id/home" should be present]
end

Then(/^I should see Hindu Calender text$/) do
  step %[element having id "android:id/action_bar_title" should have text as "Hindu Calendar"]
end

Then(/^I should see Settings option image$/) do
  step %[element having id "com.alokmandavgane.hinducalendar:id/menu_settings" should be present]
end

When(/^I tap on Hambergur menu$/) do
  step %[I click on element having id "android:id/up"]
end

Then(/^I should see left menu overlay$/) do
  step %[element having id "com.alokmandavgane.hinducalendar:id/left_drawer" should be present]
end

Then(/^I should see Kundali option$/) do
  step %[element having xpath "//android.widget.TextView[@text='Kundali']" should have text as "Kundali"]
end

When(/^I tap on Hambergur menu again$/) do
  step %[I click on element having id "android:id/up"]
end

Then(/^I should not see left menu overlay$/) do
  step %[element having id "com.alokmandavgane.hinducalendar:id/left_drawer" should not be present]
end
require 'selenium-cucumber'

When(/^I tap on Month View option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='Month View']"]
end

Then(/^I should get redirected to Month View page$/) do
  step %[element having id "android:id/action_bar_title" should have text as "Month View"]
end

Then(/^I should see Feativals and Events in this month text$/) do
  step %[element having xpath "//android.widget.TextView[@index=4]" should have text as "Festivals and Events in this month"]
end

Then(/^I should get redirected to home page$/) do
  step %[I wait for 3 sec]
  step %[element having id "android:id/action_bar_title" should have text as "Hindu Calendar"]
end

When(/^I tap on Panchang option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='Panchang']"]
end

Then(/^I should get redirected to Panchang page$/) do
  step %[element having id "android:id/action_bar_title" should have text as "Panchang"]
end

Then(/^I should see date$/) do
  step %[element having id "com.alokmandavgane.hinducalendar:id/date" should be present]
end

When(/^I tap on Kundli option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='Kundli']"]
end

Then(/^I should get redirected to Kundali page$/) do
  step %[element having id "android:id/action_bar_title" should have text as "Kundali"]
end

Then(/^I should see Info text$/) do
  step %[element having xpath "//android.widget.TextView[@text='Info']" should have text as "Info"]
end

When(/^I tap on Jyotish option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='Jyotish']"]
end

Then(/^I should get redirected to Jyotish page$/) do
  step %[element having id "android:id/action_bar_title" should have text as "Jyotish"]
end

Then(/^I should see Muhurt text$/) do
  step %[element having xpath "//android.widget.TextView[@text='Muhurt']" should have text as "Muhurt"]
end

When(/^I tap on Festivals option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='Festivals']"]
end

Then(/^I should get redirected to Festivals page$/) do
  step %[element having id "android:id/action_bar_title" should have text as "Festivals"]
end

Then(/^I should see Gudi Padwa text$/) do
  step %[element having xpath "//android.widget.TextView[@text='Gudi Padwa']" should have text as "Gudi Padwa"]
end

When(/^I tap on My Tithi option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='My Tithi']"]
end

Then(/^I should get redirected to My Tithi page$/) do
  step %[element having id "android:id/action_bar_title" should have text as "My Tithi"]
end

Then(/^I should see Save My Tithi button$/) do
  step %[element having id "com.alokmandavgane.hinducalendar:id/save_mytithi" should be present]
end

When(/^I tap on Settings option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='Settings']"]
end

Then(/^I should get redirected to Settings page$/) do
  step %[element having id "android:id/action_bar_title" should have text as "Settings"]
end

Then(/^I should see Save Settings button$/) do
  step %[element having id "com.alokmandavgane.hinducalendar:id/save_settings1" should be present]
end

When(/^I tap on Info option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='Info']"]
end

Then(/^I should get redirected to Info page$/) do
  step %[element having id "android:id/action_bar_title" should have text as "Info"]
end

Then(/^I should see Hindu Calendar text on Info page$/) do
  step %[element having xpath "//android.view.View[@content-desc='Hindu Calendar Heading']" should be present]
end

When(/^I tap on About option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='About']"]
end

Then(/^I should get redirected to About Overlay$/) do
  step %[element having id "android:id/content" should be present]
end

Then(/^I should see Hindu Calendar text and OK button$/) do
  step %[element having id "android:id/alertTitle" should have text as "Hindu Calendar"]
  step %[element having id "android:id/button1" should be present]
end

When(/^I tap on OK button of Overlay$/) do
  step %[I click on element having id "android:id/button1"]
end

When(/^I tap on Feedback option$/) do
  step %[I click on element having xpath "//android.widget.TextView[@text='Feedback']"]
end

Then(/^I should get redirected to Feedback Overlay$/) do
  step %[element having id "android:id/content" should be present]
end

Then(/^I should see Feedback text and OK button$/) do
  step %[element having id "android:id/alertTitle" should have text as "Feedback"]
  step %[element having id "android:id/button1" should be present]
end

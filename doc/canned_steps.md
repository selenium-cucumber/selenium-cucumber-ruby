Canned Steps
============
selenium-cucumber comes with the following set of predefined steps.
You can add your own steps or change the ones you see here.

Assertion Steps
---------------
To assert that page title can be found use following step.

    Then(/^I see page title as "(.*?)"$/)

To assert that value of element can be found use any of the following steps.

    Then /^I should see element value as "([^\"]*)" where element id is "([^\"]*)"$/ 
    Then /^I should see element value as "([^\"]*)" where element name is "([^\"]*)"$/ 
    Then /^I should see element value as "([^\"]*)" where element xpath is "([^\"]*)"$/
  

To assert that value of element cannot be found use any of the following steps. 

    Then /^I should not see element value as "([^\"]*)" where element id is "([^\"]*)"$/
    Then /^I should not see element value as "([^\"]*)" where element name is "([^\"]*)"$/
    Then /^I should not see element value as "([^\"]*)" where element xpath is "([^\"]*)"$/
  

To assert that element is enabled use any of the following steps. 

    Then /^element with id "([^\"]*)" should enable$/
    Then /^element with name "([^\"]*)" should enable$/
    Then /^element with xpath "([^\"]*)" should enable$/

To assert that element is disabled use any of the following steps.

    Then /^element with id "([^\"]*)" should disable$/ 
    Then /^element with name "([^\"]*)" should disable$/
    Then /^element with xpath "([^\"]*)" should disable$/

Input Steps
-----------
To enter text into input field use following steps

    Then /^I enter "([^\"]*)" into input field with id "([^\"]*)"$/
    Then /^I enter "([^\"]*)" into input field with name "([^\"]*)"$/
    Then /^I enter "([^\"]*)" into input field with xpath "([^\"]*)"$/

To clear input field use following steps

    Then /^I clear input field with id "([^\"]*)"$/ 
    Then /^I clear input field with name "([^\"]*)"$/ 
    Then /^I clear input field with xpath "([^\"]*)"$/ 
    
Navigation Steps
----------------

    Then(/^I navigate to "([^\"]*)"$/)
    Then(/^I close browser$/)
    
Click Steps
-----------

    Then(/^I click on element with id "(.*?)"$/)
    Then(/^I click on element with name "(.*?)"$/)
    Then(/^I click on element with xpath "(.*?)"$/)

Progress Steps
--------------

    Then(/^I wait for (\d+) sec$/)
    Then(/^I wait "(.*?)" second for element having id "(.*?)"$/)
    Then(/^I wait "(.*?)" second for element having name "(.*?)"$/)
    Then(/^I wait "(.*?)" second for element having xpath "(.*?)"$/)
    
Screenshot Steps
----------------

    Then(/^I take screenshot$/)

Canned Steps
============
selenium-cucumber comes with the following set of predefined steps.
You can add your own steps or change the ones you see here.

Navigation Steps
----------------
To open/cloase URL and to navigate between pages use following steps

    Then I navigate to "([^\"]*)"
    Then I navigate forward
    Then I navigate back
    Then I close browser


Assertion Steps
---------------
To assert that page title can be found use following step.

    Then I see page title as "(.*?)"

To assert element text use any of the following steps. 

    Then I should see text as "(.*?)" for element with id "(.*?)"
    Then I should see text as "(.*?)" for element with class "(.*?)"
    Then I should see text as "(.*?)" for element with name "(.*?)"
    Then I should see text as "(.*?)" for element with xpath "(.*?)"
    Then I should see text as "(.*?)" for element with css "(.*?)"

    Then I should not see text as "(.*?)" for element with id "(.*?)"
    Then I should not see text as "(.*?)" for element with class "(.*?)"
    Then I should not see text as "(.*?)" for element with name "(.*?)"
    Then I should not see text as "(.*?)" for element with xpath "(.*?)"
    Then I should not see text as "(.*?)" for element with css "(.*?)"

To assert element attribute use any of the following steps. 

    Then I should see attribute "(.*?)" with value "(.*?)" for element with id "(.*?)"
    Then I should see attribute "(.*?)" with value "(.*?)" for element with class "(.*?)"
    Then I should see attribute "(.*?)" with value "(.*?)" for element with name "(.*?)"
    Then I should see attribute "(.*?)" with value "(.*?)" for element with xpath "(.*?)"
    Then I should see attribute "(.*?)" with value "(.*?)" for element with css "(.*?)"
    
    Then I should not see attribute "(.*?)" with value "(.*?)" for element with id "(.*?)"
    Then I should not see attribute "(.*?)" with value "(.*?)" for element with class "(.*?)"
    Then I should not see attribute "(.*?)" with value "(.*?)" for element with name "(.*?)"
    Then I should not see attribute "(.*?)" with value "(.*?)" for element with xpath "(.*?)"
    Then I should not see attribute "(.*?)" with value "(.*?)" for element with css "(.*?)"
    
To assert that element is enabled use any of the following steps. 

    Then element with id "([^\"]*)" should enable
    Then element with name "([^\"]*)" should enable
    Then element with class "([^\"]*)" should enable
    Then element with xpath "([^\"]*)" should enable
    Then element with css "([^\"]*)" should enable

To assert that element is disabled use any of the following steps.

    Then element with id "([^\"]*)" should disable 
    Then element with name "([^\"]*)" should disable
    Then element with class "([^\"]*)" should disable
    Then element with xpath "([^\"]*)" should disable
    Then element with css "([^\"]*)" should disable

To assert that element is present use any of the following steps.

    Then I should see element present with id "(.*?)"
    Then I should see element present with name "(.*?)"
    Then I should see element present with class "(.*?)"
    Then I should see element present with xpath "(.*?)"
    Then I should see element present with css "(.*?)"
    
To assert that element is not present use any of the following steps.

    Then I should not see element present with id "(.*?)"
    Then I should not see element present with name "(.*?)"
    Then I should not see element present with class "(.*?)"
    Then I should not see element present with xpath "(.*?)"
    Then I should not see element present with css "(.*?)"
    

To assert that checkbox is checked use any of the following steps.

    Then I should see checkbox with id "(.*?)" checked
    Then I should see checkbox with name "(.*?)" checked
    Then I should see checkbox with class "(.*?)" checked
    Then I should see checkbox with xpath "(.*?)" checked
    Then I should see checkbox with css "(.*?)" checked

To assert that checkbox is unchecked use any of the following steps.

    Then I should see checkbox with id "(.*?)" unchecked
    Then I should see checkbox with name "(.*?)" unchecked
    Then I should see checkbox with class "(.*?)" unchecked
    Then I should see checkbox with xpath "(.*?)" unchecked
    Then I should see checkbox with css "(.*?)" unchecked

To assert that radio button selected use any of the following steps.

    Then I should see radio button with id "(.*?)" selected
    Then I should see radio button with name "(.*?)" selected
    Then I should see radio button with class "(.*?)" selected
    Then I should see radio button with xpath "(.*?)" selected
    Then I should see radio button with css "(.*?)" selected

To assert that radio button not selected use any of the following steps.

    Then I should see radio button with id "(.*?)" not selected
    Then I should see radio button with name "(.*?)" not selected
    Then I should see radio button with class "(.*?)" not selected
    Then I should see radio button with xpath "(.*?)" not selected
    Then I should see radio button with css "(.*?)" not selected

To assert that radio button group selected by text use any of the following steps.

    Then I should see "(.*?)" option by text from radio button group with id "(.*?)" selected
    Then I should see "(.*?)" option by text from radio button group with name "(.*?)" selected
    Then I should see "(.*?)" option by text from radio button group with class "(.*?)" selected
    Then I should see "(.*?)" option by text from radio button group with xpath "(.*?)" selected
    Then I should see "(.*?)" option by text from radio button group with css "(.*?)" selected

To assert that radio button group selected by value use any of the following steps.

    Then I should see "(.*?)" option by value from radio button group with id "(.*?)" selected
    Then I should see "(.*?)" option by value from radio button group with name "(.*?)" selected
    Then I should see "(.*?)" option by value from radio button group with class "(.*?)" selected
    Then I should see "(.*?)" option by value from radio button group with xpath "(.*?)" selected
    Then I should see "(.*?)" option by value from radio button group with css "(.*?)" selected

To assert that radio button group not selected by text use any of the following steps.

    Then I should see "(.*?)" option by text from radio button group with id "(.*?)" not selected
    Then I should see "(.*?)" option by text from radio button group with name "(.*?)" not selected
    Then I should see "(.*?)" option by text from radio button group with class "(.*?)" not selected
    Then I should see "(.*?)" option by text from radio button group with xpath "(.*?)" not selected
    Then I should see "(.*?)" option by text from radio button group with css "(.*?)" not selected

To assert that radio button group not selected by value use any of the following steps.

    Then I should see "(.*?)" option by value from radio button group with id "(.*?)" not selected
    Then I should see "(.*?)" option by value from radio button group with name "(.*?)" not selected
    Then I should see "(.*?)" option by value from radio button group with class "(.*?)" not selected
    Then I should see "(.*?)" option by value from radio button group with xpath "(.*?)" not selected
    Then I should see "(.*?)" option by value from radio button group with css "(.*?)" not selected


Input Steps
-----------
To enter text into input field use following steps

    Then I enter "([^\"]*)" into input field with id "([^\"]*)e
    Then I enter "([^\"]*)" into input field with name "([^\"]*)e
    Then I enter "([^\"]*)" into input field with class "([^\"]*)e
    Then I enter "([^\"]*)" into input field with xpath "([^\"]*)e
    Then I enter "([^\"]*)" into input field with css "([^\"]*)e
    
To clear input field use following steps

    Then I clear input field with id "([^\"]*)e 
    Then I clear input field with name "([^\"]*)e
    Then I clear input field with class "([^\"]*)e 
    Then I clear input field with xpath "([^\"]*)e 
    Then I clear input field with css "([^\"]*)e

To select option by text from dropdown/multiselect use following steps

    Then I select "(.*?)" option by text from dropdown with id "(.*?)"
    Then I select "(.*?)" option by text from dropdown with name "(.*?)"
    Then I select "(.*?)" option by text from dropdown with class "(.*?)"
    Then I select "(.*?)" option by text from dropdown with xpath "(.*?)"
    Then I select "(.*?)" option by text from dropdown with css "(.*?)"

To select option by index from dropdown/multiselect use following steps

    Then I select (\d+) option by index from dropdown with id "(.*?)"
    Then I select (\d+) option by index from dropdown with name "(.*?)"
    Then I select (\d+) option by index from dropdown with class "(.*?)"
    Then I select (\d+) option by index from dropdown with xpath "(.*?)"
    Then I select (\d+) option by index from dropdown with css "(.*?)"

To select option by value from dropdown/multiselect use following steps

    Then I select "(.*?)" option by value from dropdown with id "(.*?)"
    Then I select "(.*?)" option by value from dropdown with name "(.*?)"
    Then I select "(.*?)" option by value from dropdown with class "(.*?)"
    Then I select "(.*?)" option by value from dropdown with xpath "(.*?)"
    Then I select "(.*?)" option by value from dropdown with css "(.*?)"
    
To unselect all option from dropdown/multiselect use following steps

    Then I unselect options from dropdown with id "(.*?)"
    Then I unselect options from dropdown with name "(.*?)"
    Then I unselect options from dropdown with class "(.*?)"
    Then I unselect options from dropdown with xpath "(.*?)"
    Then I unselect options from dropdown with css "(.*?)"

To check checkbox use following steps

    Then I check checkbox with id "(.*?)"
    Then I check checkbox with name "(.*?)"
    Then I check checkbox with class "(.*?)"
    Then I check checkbox with xpath "(.*?)"
    Then I check checkbox with css "(.*?)"

To uncheck checkbox use following steps

    Then I uncheck checkbox with id "(.*?)"
    Then I uncheck checkbox with name "(.*?)"
    Then I uncheck checkbox with class "(.*?)"
    Then I uncheck checkbox with xpath "(.*?)"
    Then I uncheck checkbox with css "(.*?)"

To toggle checkbox use following steps

    Then toggle checkbox with id "(.*?)"
    Then toggle checkbox with name "(.*?)"
    Then toggle checkbox with class "(.*?)"
    Then toggle checkbox with xpath "(.*?)"
    Then toggle checkbox with css "(.*?)"

To select radio button use following steps

    Then I select radio button with id "(.*?)"
    Then I select radio button with name "(.*?)"
    Then I select radio button with class "(.*?)"
    Then I select radio button with xpath "(.*?)"
    Then I select radio button with css "(.*?)"


To select one radio button by text from radio button group use following steps

    Then I select "(.*?)" option by text from radio button group with id "(.*?)"
    Then I select "(.*?)" option by text from radio button group with name "(.*?)"
    Then I select "(.*?)" option by text from radio button group with class "(.*?)"
    Then I select "(.*?)" option by text from radio button group with xpath "(.*?)"
    Then I select "(.*?)" option by text from radio button group with css "(.*?)"

To select one radio button by value from radio button group use following steps

    Then I select "(.*?)" option by value from radio button group with id "(.*?)"
    Then I select "(.*?)" option by value from radio button group with name "(.*?)"
    Then I select "(.*?)" option by value from radio button group with class "(.*?)"
    Then I select "(.*?)" option by value from radio button group with xpath "(.*?)"
    Then I select "(.*?)" option by value from radio button group with css "(.*?)"


Click Steps
-----------
To click on web element use following steps

    Then I click on element with id "(.*?)"
    Then I click on element with name "(.*?)"
    Then I click on element with class "(.*?)"
    Then I click on element with xpath "(.*?)"
    Then I click on element with css "(.*?)"


Progress Steps
--------------
To wait for specific time and for specific element use following steps

    Then I wait for (\d+) sec
    Then I wait "(.*?)" seconds for element having id "(.*?)"
    Then I wait "(.*?)" seconds for element having name "(.*?)"
    Then I wait "(.*?)" seconds for element having class "(.*?)"
    Then I wait "(.*?)" seconds for element having xpath "(.*?)"
    Then I wait "(.*?)" seconds for element having css "(.*?)"


Javascript handling steps    
-------------------------
To handle javascript pop-up use following steps

    Then I accept alert 
    Then I dismiss alert
  

Screenshot Steps
----------------
To take screenshot use following steps

    Then I take screenshot

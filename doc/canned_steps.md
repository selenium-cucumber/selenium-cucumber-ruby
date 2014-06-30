Canned Steps
============
selenium-cucumber comes having the following set of predefined steps.
You can add your own steps or change the ones you see here.

Navigation Steps
----------------
To open/close URL and to navigate between pages use following steps

    Then I navigate to "([^\"]*)"
    Then I navigate forward
    Then I navigate back
    Then I close browser


Assertion Steps
---------------
To assert that page title can be found use following step.

    Then I see page title as "(.*?)"

To assert element text use any of the following steps. 

    Then I should see text as "(.*?)" for element having id "(.*?)"
    Then I should see text as "(.*?)" for element having class "(.*?)"
    Then I should see text as "(.*?)" for element having name "(.*?)"
    Then I should see text as "(.*?)" for element having xpath "(.*?)"
    Then I should see text as "(.*?)" for element having css "(.*?)"

    Then I should not see text as "(.*?)" for element having id "(.*?)"
    Then I should not see text as "(.*?)" for element having class "(.*?)"
    Then I should not see text as "(.*?)" for element having name "(.*?)"
    Then I should not see text as "(.*?)" for element having xpath "(.*?)"
    Then I should not see text as "(.*?)" for element having css "(.*?)"

To assert element attribute use any of the following steps. 

    Then I should see attribute "(.*?)" having value "(.*?)" for element having id "(.*?)"
    Then I should see attribute "(.*?)" having value "(.*?)" for element having class "(.*?)"
    Then I should see attribute "(.*?)" having value "(.*?)" for element having name "(.*?)"
    Then I should see attribute "(.*?)" having value "(.*?)" for element having xpath "(.*?)"
    Then I should see attribute "(.*?)" having value "(.*?)" for element having css "(.*?)"
    
    Then I should not see attribute "(.*?)" having value "(.*?)" for element having id "(.*?)"
    Then I should not see attribute "(.*?)" having value "(.*?)" for element having class "(.*?)"
    Then I should not see attribute "(.*?)" having value "(.*?)" for element having name "(.*?)"
    Then I should not see attribute "(.*?)" having value "(.*?)" for element having xpath "(.*?)"
    Then I should not see attribute "(.*?)" having value "(.*?)" for element having css "(.*?)"
    
To assert that element is enabled use any of the following steps. 

    Then element having id "([^\"]*)" should enable
    Then element having name "([^\"]*)" should enable
    Then element having class "([^\"]*)" should enable
    Then element having xpath "([^\"]*)" should enable
    Then element having css "([^\"]*)" should enable

To assert that element is disabled use any of the following steps.

    Then element having id "([^\"]*)" should disable 
    Then element having name "([^\"]*)" should disable
    Then element having class "([^\"]*)" should disable
    Then element having xpath "([^\"]*)" should disable
    Then element having css "([^\"]*)" should disable

To assert that element is present use any of the following steps.

    Then I should see element present having id "(.*?)"
    Then I should see element present having name "(.*?)"
    Then I should see element present having class "(.*?)"
    Then I should see element present having xpath "(.*?)"
    Then I should see element present having css "(.*?)"
    
To assert that element is not present use any of the following steps.

    Then I should not see element present having id "(.*?)"
    Then I should not see element present having name "(.*?)"
    Then I should not see element present having class "(.*?)"
    Then I should not see element present having xpath "(.*?)"
    Then I should not see element present having css "(.*?)"
    

To assert that checkbox is checked use any of the following steps.

    Then I should see checkbox having id "(.*?)" checked
    Then I should see checkbox having name "(.*?)" checked
    Then I should see checkbox having class "(.*?)" checked
    Then I should see checkbox having xpath "(.*?)" checked
    Then I should see checkbox having css "(.*?)" checked

To assert that checkbox is unchecked use any of the following steps.

    Then I should see checkbox having id "(.*?)" unchecked
    Then I should see checkbox having name "(.*?)" unchecked
    Then I should see checkbox having class "(.*?)" unchecked
    Then I should see checkbox having xpath "(.*?)" unchecked
    Then I should see checkbox having css "(.*?)" unchecked

To assert that radio button selected use any of the following steps.

    Then I should see radio button having id "(.*?)" selected
    Then I should see radio button having name "(.*?)" selected
    Then I should see radio button having class "(.*?)" selected
    Then I should see radio button having xpath "(.*?)" selected
    Then I should see radio button having css "(.*?)" selected

To assert that radio button not selected use any of the following steps.

    Then I should see radio button having id "(.*?)" not selected
    Then I should see radio button having name "(.*?)" not selected
    Then I should see radio button having class "(.*?)" not selected
    Then I should see radio button having xpath "(.*?)" not selected
    Then I should see radio button having css "(.*?)" not selected

To assert that radio button group selected by text use any of the following steps.

    Then I should see "(.*?)" option by text from radio button group having id "(.*?)" selected
    Then I should see "(.*?)" option by text from radio button group having name "(.*?)" selected
    Then I should see "(.*?)" option by text from radio button group having class "(.*?)" selected
    Then I should see "(.*?)" option by text from radio button group having xpath "(.*?)" selected
    Then I should see "(.*?)" option by text from radio button group having css "(.*?)" selected

To assert that radio button group selected by value use any of the following steps.

    Then I should see "(.*?)" option by value from radio button group having id "(.*?)" selected
    Then I should see "(.*?)" option by value from radio button group having name "(.*?)" selected
    Then I should see "(.*?)" option by value from radio button group having class "(.*?)" selected
    Then I should see "(.*?)" option by value from radio button group having xpath "(.*?)" selected
    Then I should see "(.*?)" option by value from radio button group having css "(.*?)" selected

To assert that radio button group not selected by text use any of the following steps.

    Then I should see "(.*?)" option by text from radio button group having id "(.*?)" not selected
    Then I should see "(.*?)" option by text from radio button group having name "(.*?)" not selected
    Then I should see "(.*?)" option by text from radio button group having class "(.*?)" not selected
    Then I should see "(.*?)" option by text from radio button group having xpath "(.*?)" not selected
    Then I should see "(.*?)" option by text from radio button group having css "(.*?)" not selected

To assert that radio button group not selected by value use any of the following steps.

    Then I should see "(.*?)" option by value from radio button group having id "(.*?)" not selected
    Then I should see "(.*?)" option by value from radio button group having name "(.*?)" not selected
    Then I should see "(.*?)" option by value from radio button group having class "(.*?)" not selected
    Then I should see "(.*?)" option by value from radio button group having xpath "(.*?)" not selected
    Then I should see "(.*?)" option by value from radio button group having css "(.*?)" not selected


Input Steps
-----------
To enter text into input field use following steps

    Then I enter "([^\"]*)" into input field having id "([^\"]*)e
    Then I enter "([^\"]*)" into input field having name "([^\"]*)e
    Then I enter "([^\"]*)" into input field having class "([^\"]*)e
    Then I enter "([^\"]*)" into input field having xpath "([^\"]*)e
    Then I enter "([^\"]*)" into input field having css "([^\"]*)e
    
To clear input field use following steps

    Then I clear input field having id "([^\"]*)e 
    Then I clear input field having name "([^\"]*)e
    Then I clear input field having class "([^\"]*)e 
    Then I clear input field having xpath "([^\"]*)e 
    Then I clear input field having css "([^\"]*)e

To select option by text from dropdown/multiselect use following steps

    Then I select "(.*?)" option by text from dropdown having id "(.*?)"
    Then I select "(.*?)" option by text from dropdown having name "(.*?)"
    Then I select "(.*?)" option by text from dropdown having class "(.*?)"
    Then I select "(.*?)" option by text from dropdown having xpath "(.*?)"
    Then I select "(.*?)" option by text from dropdown having css "(.*?)"

To select option by index from dropdown/multiselect use following steps

    Then I select (\d+) option by index from dropdown having id "(.*?)"
    Then I select (\d+) option by index from dropdown having name "(.*?)"
    Then I select (\d+) option by index from dropdown having class "(.*?)"
    Then I select (\d+) option by index from dropdown having xpath "(.*?)"
    Then I select (\d+) option by index from dropdown having css "(.*?)"

To select option by value from dropdown/multiselect use following steps

    Then I select "(.*?)" option by value from dropdown having id "(.*?)"
    Then I select "(.*?)" option by value from dropdown having name "(.*?)"
    Then I select "(.*?)" option by value from dropdown having class "(.*?)"
    Then I select "(.*?)" option by value from dropdown having xpath "(.*?)"
    Then I select "(.*?)" option by value from dropdown having css "(.*?)"
    
To unselect all option from dropdown/multiselect use following steps

    Then I unselect options from dropdown having id "(.*?)"
    Then I unselect options from dropdown having name "(.*?)"
    Then I unselect options from dropdown having class "(.*?)"
    Then I unselect options from dropdown having xpath "(.*?)"
    Then I unselect options from dropdown having css "(.*?)"

To check checkbox use following steps

    Then I check checkbox having id "(.*?)"
    Then I check checkbox having name "(.*?)"
    Then I check checkbox having class "(.*?)"
    Then I check checkbox having xpath "(.*?)"
    Then I check checkbox having css "(.*?)"

To uncheck checkbox use following steps

    Then I uncheck checkbox having id "(.*?)"
    Then I uncheck checkbox having name "(.*?)"
    Then I uncheck checkbox having class "(.*?)"
    Then I uncheck checkbox having xpath "(.*?)"
    Then I uncheck checkbox having css "(.*?)"

To toggle checkbox use following steps

    Then toggle checkbox having id "(.*?)"
    Then toggle checkbox having name "(.*?)"
    Then toggle checkbox having class "(.*?)"
    Then toggle checkbox having xpath "(.*?)"
    Then toggle checkbox having css "(.*?)"

To select radio button use following steps

    Then I select radio button having id "(.*?)"
    Then I select radio button having name "(.*?)"
    Then I select radio button having class "(.*?)"
    Then I select radio button having xpath "(.*?)"
    Then I select radio button having css "(.*?)"


To select one radio button by text from radio button group use following steps

    Then I select "(.*?)" option by text from radio button group having id "(.*?)"
    Then I select "(.*?)" option by text from radio button group having name "(.*?)"
    Then I select "(.*?)" option by text from radio button group having class "(.*?)"
    Then I select "(.*?)" option by text from radio button group having xpath "(.*?)"
    Then I select "(.*?)" option by text from radio button group having css "(.*?)"

To select one radio button by value from radio button group use following steps

    Then I select "(.*?)" option by value from radio button group having id "(.*?)"
    Then I select "(.*?)" option by value from radio button group having name "(.*?)"
    Then I select "(.*?)" option by value from radio button group having class "(.*?)"
    Then I select "(.*?)" option by value from radio button group having xpath "(.*?)"
    Then I select "(.*?)" option by value from radio button group having css "(.*?)"


Click Steps
-----------
To click on web element use following steps

    Then I click on element having id "(.*?)"
    Then I click on element having name "(.*?)"
    Then I click on element having class "(.*?)"
    Then I click on element having xpath "(.*?)"
    Then I click on element having css "(.*?)"


Progress Steps
--------------
To wait for specific time and for specific element to display use following steps

    Then I wait for (\d+) sec
    Then I wait "(.*?)" seconds for element to display having id "(.*?)"
    Then I wait "(.*?)" seconds for element to display having name "(.*?)"
    Then I wait "(.*?)" seconds for element to display having class "(.*?)"
    Then I wait "(.*?)" seconds for element to display having xpath "(.*?)"
    Then I wait "(.*?)" seconds for element to display having css "(.*?)"

To wait for specific time and for specific element to enable use following steps

    Then I wait for (\d+) sec
    Then I wait "(.*?)" seconds for element to enable having id "(.*?)"
    Then I wait "(.*?)" seconds for element to enable having name "(.*?)"
    Then I wait "(.*?)" seconds for element to enable having class "(.*?)"
    Then I wait "(.*?)" seconds for element to enable having xpath "(.*?)"
    Then I wait "(.*?)" seconds for element to enable having css "(.*?)"

Javascript Handling Steps    
-------------------------
To handle javascript pop-up use following steps

    Then I accept alert 
    Then I dismiss alert
  

Screenshot Steps
----------------
To take screenshot use following steps

    Then I take screenshot

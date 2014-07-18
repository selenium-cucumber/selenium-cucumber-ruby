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
    Then I refresh page

To interact with browser use following steps    

    Then I resize browser window size to width (\d+) and heigth (\d+)
    Then I close browser

To zoom in/out webpage use following steps

    Then I zoom in page
    Then I zoom out page

To zoom out webpage till necessary element displays use following steps

    Then I zoom out page till I see element having id "(.*?)"
    Then I zoom out page till I see element having name "(.*?)"
    Then I zoom out page till I see element having class "(.*?)"
    Then I zoom out page till I see element having xpath "(.*?)"
    Then I zoom out page till I see element having css "(.*?)"

To reset webpage view use following step

    Then I reset page view

To scroll webpage use following step
    
    Then I scroll to element having id "(.*?)"
    Then I scroll to element having name "(.*?)"
    Then I scroll to element having class "(.*?)"
    Then I scroll to element having xpath "(.*?)"
    Then I scroll to element having css "(.*?)"

To hover over a element use following step

    Then I hover over element having id "(.*?)"
    Then I hover over element having name "(.*?)"
    Then I hover over element having class "(.*?)"
    Then I hover over element having xpath "(.*?)"
    Then I hover over element having css "(.*?)"


Assertion Steps
---------------
To assert that page title can be found use following step.

    Then I should see page title as "(.*?)"

To assert element text use any of the following steps. 

    Then element having id "([^\"]*)" should have text as "(.*?)"
    Then element having name "([^\"]*)" should have text as "(.*?)"
    Then element having class "([^\"]*)" should have text as "(.*?)"
    Then element having xpath "([^\"]*)" should have text as "(.*?)"
    Then element having css "([^\"]*)" should have text as "(.*?)"
    
    Then element having id "([^\"]*)" should not have text as "(.*?)"
    Then element having name "([^\"]*)" should not have text as "(.*?)"
    Then element having class "([^\"]*)" should not have text as "(.*?)"
    Then element having xpath "([^\"]*)" should not have text as "(.*?)"
    Then element having css "([^\"]*)" should not have text as "(.*?)"
    

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

    Then element having id "([^\"]*)" should be enabled
    Then element having name "([^\"]*)" should be enabled
    Then element having class "([^\"]*)" should be enabled
    Then element having xpath "([^\"]*)" should be enabled
    Then element having css "([^\"]*)" should be enabled

To assert that element is disabled use any of the following steps.

    Then element having id "([^\"]*)" should be disabled
    Then element having name "([^\"]*)" should be disabled
    Then element having class "([^\"]*)" should be disabled
    Then element having xpath "([^\"]*)" should be disabled
    Then element having css "([^\"]*)" should be disabled

To assert that element is present use any of the following steps.

    Then element having id "([^\"]*)" should be present
    Then element having name "([^\"]*)" should be present
    Then element having class "([^\"]*)" should be present
    Then element having xpath "([^\"]*)" should be present
    Then element having css "([^\"]*)" should be present
    
To assert that element is not present use any of the following steps.

    Then element having id "([^\"]*)" should not be present
    Then element having name "([^\"]*)" should not be present
    Then element having class "([^\"]*)" should not be present
    Then element having xpath "([^\"]*)" should not be present
    Then element having css "([^\"]*)" should not be present
    

To assert that checkbox is checked use any of the following steps.

    Then checkbox having id "(.*?)" should be checked
    Then checkbox having name "(.*?)" should be checked
    Then checkbox having class "(.*?)" should be checked
    Then checkbox having xpath "(.*?)" should be checked
    Then checkbox having css "(.*?)" should be checked

To assert that checkbox is unchecked use any of the following steps.

    Then checkbox having id "(.*?)" should be unchecked
    Then checkbox having name "(.*?)" should be unchecked
    Then checkbox having class "(.*?)" should be unchecked
    Then checkbox having xpath "(.*?)" should be unchecked
    Then checkbox having css "(.*?)" should be unchecked

To assert that radio button selected use any of the following steps.

    Then radio button having id "(.*?)" should be selected
    Then radio button having name "(.*?)" should be selected
    Then radio button having class "(.*?)" should be selected
    Then radio button having xpath "(.*?)" should be selected
    Then radio button having css "(.*?)" should be selected

To assert that radio button not selected use any of the following steps.

    Then radio button having id "(.*?)" should be unselected
    Then radio button having name "(.*?)" should be unselected
    Then radio button having class "(.*?)" should be unselected
    Then radio button having xpath "(.*?)" should be unselected
    Then radio button having css "(.*?)" should be unselected

To assert that radio button group selected by text use any of the following steps.

    Then option "(.*?)" by text from radio button group having id "(.*?)" should be selected
    Then option "(.*?)" by text from radio button group having name "(.*?)" should be selected
    Then option "(.*?)" by text from radio button group having class "(.*?)" should be selected
    Then option "(.*?)" by text from radio button group having xpath "(.*?)" should be selected
    Then option "(.*?)" by text from radio button group having css "(.*?)" should be selected
    
To assert that radio button group selected by value use any of the following steps.

    Then option "(.*?)" by value from radio button group having id "(.*?)" should be selected
    Then option "(.*?)" by value from radio button group having name "(.*?)" should be selected
    Then option "(.*?)" by value from radio button group having class "(.*?)" should be selected
    Then option "(.*?)" by value from radio button group having xpath "(.*?)" should be selected
    Then option "(.*?)" by value from radio button group having css "(.*?)" should be selected

To assert that radio button group not selected by text use any of the following steps.

    Then option "(.*?)" by text from radio button group having id "(.*?)" should be unselected
    Then option "(.*?)" by text from radio button group having name "(.*?)" should be unselected
    Then option "(.*?)" by text from radio button group having class "(.*?)" should be unselected
    Then option "(.*?)" by text from radio button group having xpath "(.*?)" should be unselected
    Then option "(.*?)" by text from radio button group having css "(.*?)" should be unselected

To assert that radio button group not selected by value use any of the following steps.

    Then option "(.*?)" by value from radio button group having id "(.*?)" should be unselected
    Then option "(.*?)" by value from radio button group having name "(.*?)" should be unselected
    Then option "(.*?)" by value from radio button group having class "(.*?)" should be unselected
    Then option "(.*?)" by value from radio button group having xpath "(.*?)" should be unselected
    Then option "(.*?)" by value from radio button group having css "(.*?)" should be unselected

To assert that link is present use following steps

    Then link having text "(.*?)" should be present
    Then link having partial text "(.*?)" should be present
        
    Then link having text "(.*?)" should not be present
    Then link having partial text "(.*?)" should not be present

To assert text on javascipt pop-up alert

    Then I should see alert text as "(.*?)"


Input Steps
-----------
To enter text into input field use following steps

    Then I enter "([^\"]*)" into input field having id "([^\"]*)
    Then I enter "([^\"]*)" into input field having name "([^\"]*)
    Then I enter "([^\"]*)" into input field having class "([^\"]*)
    Then I enter "([^\"]*)" into input field having xpath "([^\"]*)
    Then I enter "([^\"]*)" into input field having css "([^\"]*)
    
To clear input field use following steps

    Then I clear input field having id "([^\"]*)
    Then I clear input field having name "([^\"]*)
    Then I clear input field having class "([^\"]*) 
    Then I clear input field having xpath "([^\"]*) 
    Then I clear input field having css "([^\"]*)

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

    Then I toggle checkbox having id "(.*?)"
    Then I toggle checkbox having name "(.*?)"
    Then I toggle checkbox having class "(.*?)"
    Then I toggle checkbox having xpath "(.*?)"
    Then I toggle checkbox having css "(.*?)"

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

To forcefully click on web element use following steps (if above steps not worked)

    Then I forcefully click on element having id "(.*?)"
    Then I forcefully click on element having name "(.*?)"
    Then I forcefully click on element having class "(.*?)"
    Then I forcefully click on element having xpath "(.*?)"
    Then I forcefully click on element having css "(.*?)"

To click on links use following steps

    Then I click on link having text "(.*?)"
    Then I click on link having partial text "(.*?)"

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
To take screenshot use following step

    Then I take screenshot


Configuration Steps
-------------------
To print testing configuration use following step

    Then I print configuration

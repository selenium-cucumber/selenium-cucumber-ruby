Feature: Create Kundali
 
  Scenario: Nvigation to kundali page
    When I tap on Kundli option
    Then I should get redirected to Kundali page

  Scenario: Enter Date
    When I tap on Date button
    Then I should see Date picker
    When I select Date as "20" "May" "2020"
    Then I should see Date button text as "20 May 2020"
    
  Scenario: Enter Time
    When I tap on Time button
    Then I should see Time picker
    When I enter Time as "08":"20" "PM"
    Then I should see Time button text as "20:20"

  Scenario: Tapping on more options arrow and Saving
    When I tap on more options arrow
    Then I should see Save Kundali option
    When I tap on Save Kundali option
    Then I should see Enter name overlay
    Then I enter name as "SeleniumCucumber"
    Then I tap on Ok button

  Scenario: Swap Kundali to see more information
    When I swipe to Kundali tab
    Then I should see Kundali
    When I swipe to Kundali(South. Ind.)
    Then I should see South. Ind. Kundali
    When I swipe to dasha
    Then I should see mahadasha details 

  Scenario: Go to homepage and open created Kundali
    When I press back button of device
    Then I should get redirected to home page
    When I tap on Kundli option
    Then I should get redirected to Kundali page
    When I tap on more options arrow
    Then I should see Open Kundali option
    When I tap on Open Kundali option
    Then I should get Kundali overlay with SeleniumCucumber Kundali
    When I tap on SeleniumCucumber Kundali
    Then I should see SeleniumCucumber Kundali is open

  Scenario: Delete Kundali
    When I tap on Open Kundali option
    Then I should get Kundali overlay with SeleniumCucumber Kundali
    Then I should see text as "Long Press to Delete Kundali"
    When I Long tap on SeleniumCucumber Kundali

  Scenario: Confirm Delete  
    Then I should get pop up with text "Remove Kundali?"
    When I tap on Ok button
    Then I should get redirected to Kundali page
    When I tap on Open Kundali option
    Then I should not see SeleniumCucumber Kundali under Open Kundali overlay
    When I press back button of device twice
    Then I should get redirected to home page

  Scenario: Close app
    Then I close app
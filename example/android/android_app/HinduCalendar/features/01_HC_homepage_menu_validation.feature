Feature: Verify homepage elements

  Scenario: As a tester I want to verify all 10 menus with name from home page
     Given I am on home page of Hindu Calender
     Then I should see Month View option
     Then I should see Panchang option
     Then I should see Kundli option
     Then I should see Jyotish option
     Then I should see Festivals option
     Then I should see My Tithi option
     Then I should see Settings option
     Then I should see Info option
     Then I should see About option
     Then I should see Feedback option

  Scenario: Verify Header menus
     Then I should see Hambergur menu
     Then I should see Swistik image
     Then I should see Hindu Calender text
     Then I should see Settings option image

  Scenario: Tap on Hambergur menu and verify options
     When I tap on Hambergur menu
     Then I should see left menu overlay
     Then I should see Month View option
     Then I should see Panchang option
     Then I should see Kundali option
     Then I should see Jyotish option
     Then I should see Festivals option
     Then I should see My Tithi option
     Then I should see Settings option
     Then I should see Info option
     When I tap on Hambergur menu again
     Then I should not see left menu overlay
     


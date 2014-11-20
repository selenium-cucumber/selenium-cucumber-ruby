
Feature: click steps
        As a user I should able to verify using assert steps

 	Scenario: Open test page
 		Given I open test page

	Scenario: verify link present or not
 		Then link having text "selenium-cucumber gem" should be present
		Then link having text "selenium-cucumber gem" should not be present

    Scenario: verify link present or not
 		Then link having text "xyz" should not be present
		Then link having text "xyz" should be present


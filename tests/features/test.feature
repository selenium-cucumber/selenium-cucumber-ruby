Feature: Input Step
  As a user I should able to give inputs
 
 	Background: Open test page
 		Given I open test page
 		And I wait 30 seconds for element having id "f_name" to display
 	
 	Scenario: Enter text into textfield
 		Then I enter "abc" into input field having id "f_name"
 		Then element having id "f_name" should have attribute "value" with value "abc"
 		Then I enter "xyz" into input field having name "lname_name"
 		Then element having name "lname_name" should have attribute "value" with value "xyz"
		Then I enter "pqr" into input field having class "address_class"
 		Then element having class "address_class" should have attribute "value" with value "pqr"
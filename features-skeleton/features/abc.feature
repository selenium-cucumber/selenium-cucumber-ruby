Feature: ABC

Following user stories of Bookmarking epic have been automated in this feature file:

 * User Story - ABC-12: As a user, I want to do blah blah blah so that I can get yada yada yada.
		Test Cases: ABC-111, ABC-222
		  
 * User Story - ABC-34: As a persona, I want to do blah blah blah so that I can get yada yada yada.
 		Test Cases: ABC-333, ABC-444

=======================================================================================================================================================================================================================================================

  Scenario: ABC should be present
    Given I navigate to "http://localhost:8080"
	When I launch "Letters" page
    Then I should see "ABC"

  Scenario: Print test configuration & close the browser
	
	Then I print configuration
	Then I close browser
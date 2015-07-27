Feature: Gmail_login

	Scenario: Valid_gmail_login
		Given I navigate to "http://www.gmail.com"
		And I enter "test@gmail.com" into input field having id "Email"
		Then I click on element having id "next"
		And I enter "!password*" into input field having id "Passwd"
		When I click on element having id "signIn"
		And I wait for 10 sec
		Then I close browser

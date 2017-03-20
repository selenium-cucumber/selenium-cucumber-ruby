Feature: Gmail_login

	Scenario: Open gmail
		Given I navigate to "http://www.gmail.com"
		
	Scenario Outline: In-valid Login
		Then I clear input field having id "Email"
		And I enter <username> into input field having id "Email"
		Then I click on element having id "next"
		Then I clear input field having id "Passwd"
		And I enter <password> into input field having id "Passwd"
		When I click on element having id "signIn"
		Then element having id "errormsg_0_Passwd" should be present
	
		Examples:
			| username | password   |
			|"test1"   |"password1" |
			|"test2"   |"password2" |
			|"test3"   |"password3" |

	Scenario: close gmail
		Then I close browser

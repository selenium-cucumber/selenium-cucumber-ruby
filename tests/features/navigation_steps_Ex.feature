Feature: Navigation Steps 
        As a user I should able to navigate on web page
 
 	Scenario: Open test page
 		Given I open test page

 	Scenario: navigating back/forward and refresh page
 		
 		Then I click on link having text "selenium-cucumber gem"
 		Then I should see page title as "selenium-cucumber | RubyGems.org | your community gem host"

 		Then I navigate back
		Then I should see page title as "Test Page for selenium–cucumber"	

 		Then I navigate forward
 		Then I should see page title as "selenium-cucumber | RubyGems.org | your community gem host"

 		Then I navigate back
 		Then I should see page title as "Test Page for selenium–cucumber"	
		
 		Then I refresh page
 		Then I should see page title as "Test Page for selenium–cucumber"	
		
	Scenario: switch to new window
        Then I click on link having text "selenium-cucumber website"
        Then I switch to new window
        Then element having id "access" should be present
        Then I should see page title as "Selenium-Cucumber | Code Less… Test More…"
        Then I close new window
       
    Scenario: switch to privious window
        Then I switch to previous window
        Then I should see page title as "Test Page for selenium–cucumber"

	Scenario: switch to first frame
		Then I switch to frame "frame_one"
		Then I enter "first frame" into input field having id "frame1_fname"

	Scenario: switch to main content
		Then I switch to main content
		Then I enter "test" into input field having id "f_name"

	Scenario: switch to second frame
		Then I switch to frame "frame_two"
		Then I enter "test@gmail.com" into input field having id "frame2_email"

	Scenario: again switch to main content
		Then I switch to main content

	Scenario: Zoom in/out web page
		
 		Then I zoom in page
 		Then I zoom out page
		Then I reset page view

	Scenario: Scroll web page
		
		Then I scroll to element having id "demo"
		Then I scroll to top of page
    	Then I scroll to end of page

	Scenario: Hover over elelment
		
		Then element having id "mouse_hover_demo" should have text as "Mouse Not hovered"
		Then I hover over element having id "hover_it"
		Then element having id "mouse_hover_demo" should have text as "Mouse hovered"
		
	Scenario: Interacting with browser
		
		Then I resize browser window size to width 400 and height 400
		Then I maximize browser window
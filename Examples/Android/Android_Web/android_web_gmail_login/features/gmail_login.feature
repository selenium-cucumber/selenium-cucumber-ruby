Feature: Gmail Login mobile web

  Scenario: valid credentials login
    Given I navigate to "http://www.gmail.com"
    Then I wait for 5 sec
    Then I enter "shreyas71190@gmail.com" into input field having id "Email"
    Then I enter "shruasja007" into input field having id "Passwd"
    When I click on element having id "signIn"
    And I wait for 10 sec
    Then element having xpath "//*[@id='tltbt']/div[3]/div/div" should be present
    And I wait for 5 sec
    Then I close browser

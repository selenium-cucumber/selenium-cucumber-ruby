Feature: Menu Navigation From Homepage

  Scenario: Tap on Month View option and verify appropriat navigation
    When I tap on Month View option
    Then I should get redirected to Month View page
    And I should see Feativals and Events in this month text
    When I press back button of device
    Then I should get redirected to home page

  Scenario: Tap on Panchang option and verify appropriat navigation
    When I tap on Panchang option
    Then I should get redirected to Panchang page
    And I should see date
    When I press back button of device
    Then I should get redirected to home page

  Scenario: Tap on Kundli option and verify appropriat navigation
    When I tap on Kundli option
    Then I should get redirected to Kundali page
    And I should see Info text
    When I press back button of device
    Then I should get redirected to home page

  Scenario: Tap on Jyotish option and verify appropriat navigation
    When I tap on Jyotish option
    Then I should get redirected to Jyotish page
    And I should see Muhurt text
    When I press back button of device
    Then I should get redirected to home page

  Scenario: Tap on Festivals option and verify appropriat navigation
    When I tap on Festivals option
    Then I should get redirected to Festivals page
    And I should see Gudi Padwa text
    When I press back button of device
    Then I should get redirected to home page

  Scenario: Tap on My Tithi option and verify appropriat navigation
    When I tap on My Tithi option
    Then I should get redirected to My Tithi page
    And I should see Save My Tithi button
    When I press back button of device
    Then I should get redirected to home page

  Scenario: Tap on Settings option and verify appropriat navigation
    When I tap on Settings option
    Then I should get redirected to Settings page
    And I should see Save Settings button
    When I press back button of device
    Then I should get redirected to home page 

  Scenario: Tap on Info option and verify appropriat navigation
    When I tap on Info option
    Then I should get redirected to Info page
    And I should see Hindu Calendar text on Info page
    When I press back button of device
    Then I should get redirected to home page

  Scenario: Tap on About option and verify appropriat navigation
    When I tap on About option
    Then I should get redirected to About Overlay
    And I should see Hindu Calendar text and OK button
    When I tap on OK button of Overlay
    Then I should get redirected to home page

  Scenario: Tap on Feedback option and verify appropriat navigation
    When I tap on Feedback option
    Then I should get redirected to Feedback Overlay
    And I should see Feedback text and OK button
    When I tap on OK button of Overlay
    Then I should get redirected to home page
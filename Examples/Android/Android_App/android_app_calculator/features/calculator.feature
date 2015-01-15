Feature: Verify Calculator functionalities
 
  Scenario: Click on OK button 
    Then I click on element having id "com.android2.calculator3:id/cling_dismiss"

  Scenario: Addirion
    Then I click on element having id "com.android2.calculator3:id/digit5"
    Then I click on element having id "com.android2.calculator3:id/plus"
    Then I click on element having id "com.android2.calculator3:id/digit9"
    When I click on element having id "com.android2.calculator3:id/equal"
    Then element having xpath "//android.widget.EditText[@index=0]" should have text as "14"


  Scenario: Substraction
    Then I click on element having id "com.android2.calculator3:id/digit9"
    Then I click on element having id "com.android2.calculator3:id/minus"
    Then I click on element having id "com.android2.calculator3:id/digit5"
    When I click on element having id "com.android2.calculator3:id/equal"
    Then element having xpath "//android.widget.EditText[@index=0]" should have text as "4"

  Scenario: Multiplication
    Then I click on element having id "com.android2.calculator3:id/digit9"
    Then I click on element having id "com.android2.calculator3:id/mul"
    Then I click on element having id "com.android2.calculator3:id/digit5"
    When I click on element having id "com.android2.calculator3:id/equal"
    Then element having xpath "//android.widget.EditText[@index=0]" should have text as "45"

  Scenario: Division
    Then I click on element having id "com.android2.calculator3:id/digit8"
    Then I click on element having id "com.android2.calculator3:id/div"
    Then I click on element having id "com.android2.calculator3:id/digit2"
    When I click on element having id "com.android2.calculator3:id/equal"
    Then element having xpath "//android.widget.EditText[@index=0]" should have text as "4"

  Scenario: Clear output
   Then I click on element having id "com.android2.calculator3:id/clear"
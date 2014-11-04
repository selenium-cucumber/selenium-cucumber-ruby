
Feature: Assertion Steps
        As a user I should able to verify using assert steps

 	Scenario: Open test page
 		Given I open test page

 	Scenario: verify page title
		Then I should see page title as "Test Page for selenium-cucumber"


	Scenario: verify element text

		Then I scroll to end of page
		Then element having id "dbClick" should have text as "Double-click this paragraph to trigger a function."
 		Then element having name "javascript_alert_msg" should have text as "Click the button to display a confirm box."
 		Then element having class "form_name" should have text as "Simple sample form with input elements"
 		Then element having xpath ".//*[@id='frm']/fieldset/p[1]/label" should have text as "Text input (first name)"

	Scenario: verify element should not text

 		Then element having id "dbClick" should not have text as "Double-click this"
		Then element having name "javascript_alert_msg" should not have text as "Click the button"
		Then element having class "form_name" should not have text as "Simple sample"
 		Then element having xpath ".//*[@id='frm']/fieldset/p[3]/label" should not have text as "xyz"

	Scenario: verify element text - negative test 1

		Then element having id "dbClick" should have text as "Double-click this"

	Scenario: verify element text - negative test 2

		Then element having name "javascript_alert_msg" should not have text as "Click the button to display a confirm box."

	Scenario: Partial text present
 	  Then element having id "frm" should have partial text as "last"

 	Scenario: Partial text present - negative test
 	  Then element having id "frm" should have partial text as "selenium"  
 	
        Scenario: Partial text not present
 	  Then element having id "frm" should not have partial text as "selenium"

    Scenario: Partial text not present - negative test 
 	  Then element having id "frm" should not have partial text as "last"	

 	Scenario: verify element accesibility

 		Then element having id "submit" should be enabled
 		Then element having name "btn_reset" should be enabled
 		Then element having class "cls_pwd" should be enabled
 		Then element having xpath ".//*[@id='try_it']" should be enabled

 		Then element having id "disabledBt_id" should be disabled
 		Then element having name "disabledBt_name" should be disabled
 		Then element having class "df_class" should be disabled
 		Then element having xpath ".//*[@id='df_id']" should be disabled

	Scenario: verify element accesibility - negative test 1

		Then element having id "submit" should be disabled

	Scenario: verify element accesibility - negative test 2

		Then element having id "disabledBt_id" should be enabled

 	Scenario: verify element visibility

 		Then element having id "hiddenElement" should not be present
 		Then element having name "he_name" should not be present
 		Then element having class "he_class" should not be present
 		Then element having xpath ".//*[@id='hiddenElement']" should not be present

		And I wait for 10 sec

 		Then element having id "hiddenElement" should be present
 		Then element having name "he_name" should be present
 		Then element having class "he_class" should be present
 		Then element having xpath ".//*[@id='hiddenElement']" should be present

 	Scenario: verify checkbox checked or not

 		Then checkbox having id "chk1" should be checked
 		Then checkbox having name "chk5_name" should be checked
 		Then checkbox having xpath ".//*[@id='chk1']" should be checked
 		Then checkbox having class "chk5_class" should be checked

 		Then checkbox having id "chk2" should be unchecked
 		Then checkbox having name "chk3_name" should be unchecked
 		Then checkbox having class "chk4_class" should be unchecked

	Scenario: verify checkbox checked or not - negative test 1

		Then checkbox having class "chk3_class" should be checked

	Scenario: verify checkbox checked or not - negative test 2

		Then checkbox having class "chk5_class" should be unchecked

 	Scenario: verify radio button selected or not

 		Then radio button having id "rdb1" should be selected
 		Then radio button having id "rdb2" should be unselected

	Scenario: verify radio button selected or not - negative test 1

 		Then radio button having id "rdb2" should be selected

	Scenario: verify radio button selected or not - negative test 2

 		Then radio button having id "rdb1" should be unselected

	Scenario: verify link present or not

 		Then link having text "selenium-cucumber gem" should be present
		Then link having text "xyz" should not be present

	Scenario: verify pop-up alert text

		When I click on element having id "try_it"
 		Then I should see alert text as "Press a button!"
		Then I accept alert

	Scenario: verify image by id and id - jpg image
 		Then actual image having id "img1" and expected image having id "img1" should be similar

	Scenario: verify image by id and image_name - jpg image
 		Then actual image having id "img1" and expected image having image_name "original_image.jpg" should be similar

	Scenario: verify image by url and image_name - jpg image
		Then actual image having url "http://s27.postimg.org/xlqzpviyr/original_image.jpg" and expected image having image_name "original_image.jpg" should be similar

	Scenario: verify image by id and image_name - jpg image - negative test
 		Then actual image having id "img1_incorrect" and expected image having image_name "original_image.jpg" should be similar

	Scenario: verify image by id and id - png image
		Then actual image having id "img2" and expected image having id "img2" should be similar

	Scenario: verify image by xpath and xpath - png image
		Then actual image having xpath ".//*[@id='img2']" and expected image having xpath ".//*[@id='img2']" should be similar

	Scenario: verify image by id and image_name - png image
		Then actual image having id "img2" and expected image having image_name "logo-PNG.png" should be similar

	Scenario: verify image by url and image_name - png image
		Then actual image having url "http://s26.postimg.org/itpfqlcop/logo1.png" and expected image having image_name "logo-PNG.png" should be similar

	Scenario: verify image by id and image_name - png image - negative test
		Then actual image having id "img2_incorrect" and expected image having image_name "logo-PNG.png" should be similar
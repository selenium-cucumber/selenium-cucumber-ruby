Feature: Assertion Steps
        As a user I should able to verify using assert steps
 
 	Scenario: Open test page
 		Given I open test page

	Scenario: verify image by id
		Then actual image having id "img1" and expected image having id "img1" should be similar

	Scenario: verify image by xpath
		Then actual image having xpath ".//*[@id='img1']" and expected image having xpath ".//*[@id='img1']" should be similar

	Scenario: verify image by id and path - negative test 1
		Then actual image having id "img1" and expected image having path "C:/dropshadow-flower-pink.png" should be similar

 	Scenario: verify image by path - negative test 2
		Then actual image having url "http://shared.ooyala.com.s3.amazonaws.com/dropshadow-flower-pink.png" and expected image having path "C:/dropshadow-flower-pink.png" should be similar

	Then actual image having id "img1" and expected image having id "img1" should be similar
	Then actual image having name "img1" and expected image having id "img1" should be similar
	Then actual image having class "img1" and expected image having id "img1" should be similar
	Then actual image having xpath "img1" and expected image having id "img1" should be similar
	Then actual image having css "img1" and expected image having id "img1" should be similar

	Then actual image having id "img1" and expected image having url "img1" should be similar
	Then actual image having name "img1" and expected image having url "img1" should be similar
	Then actual image having class "img1" and expected image having url "img1" should be similar
	Then actual image having xpath "img1" and expected image having url "img1" should be similar
	Then actual image having css "img1" and expected image having url "img1" should be similar

	Then actual image having id "img1" and expected image having image_name "img1" should be similar
	Then actual image having name "img1" and expected image having image_name "img1" should be similar
	Then actual image having class "img1" and expected image having imag_ename "img1" should be similar
	Then actual image having xpath "img1" and expected image having image_name "img1" should be similar
	Then actual image having css "img1" and expected image having image_name "img1" should be similar

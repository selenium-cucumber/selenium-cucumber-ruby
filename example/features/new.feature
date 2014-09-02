Feature: Assertion Steps
        As a user I should able to verify using assert steps

 	Scenario: Open test page
 		Given I navigate to "http://ruby.bastardsbook.com/chapters/image-manipulation/"

	Scenario: verify image by xpath and xpath - jpg image
 		Then actual image having xpath "html/body/div[2]/div[2]/div/article/div[1]/a/img" and expected image having xpath "html/body/div[2]/div[2]/div/article/div[1]/a/img" should be similar

	Scenario: verify image by xpath and name - jpg image
 		Then actual image having xpath "html/body/div[2]/div[2]/div/article/div[1]/a/img" and expected image having image_name "image-manipulation.jpg" should be similar

	Scenario: verify image by xpath and name - jpg image - negative test
 		Then actual image having xpath "html/body/div[2]/div[2]/div/article/div[1]/a/img" and expected image having image_name "image-manipulation1.jpg" should be similar

	Scenario: Open test page
 		Given I open test page

 	Scenario: verify image by id and id - png image
		Then actual image having id "img1" and expected image having id "img1" should be similar

	Scenario: verify image by xpath and xpath - png image
		Then actual image having xpath ".//*[@id='img1']" and expected image having xpath ".//*[@id='img1']" should be similar

	Scenario: verify image by id and image_name - png image
		Then actual image having id "img1" and expected image having image_name "flower.png" should be similar

	Scenario: verify image by url and image_name - png image
		Then actual image having url "http://shared.ooyala.com.s3.amazonaws.com/dropshadow-flower-pink.png" and expected image having image_name "flower.png" should be similar

	Scenario: verify image by id and image_name - png image - negative test
		Then actual image having id "img1" and expected image having image_name "flower1.png" should be similar


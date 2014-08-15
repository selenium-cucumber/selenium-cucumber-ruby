Selenium-Cucumber Ruby API's
============================

If you are writing code for your custom steps you can use the following methods :

Note : For some of the API paramtere values are fixed. Such values for paramaters are mentioned below. 

Navigation API's
----------------

	navigate_to("link")

	navigate(direction)  # direction => "back" / "forward"

	close_driver()


Browser Interaction API's
-------------------------

	resize_browser(width, height)

	scroll_page(to)	     # to => "top" / "end"

	scroll_to_element(by, access_value)

	zoom_in_out(in_out)  # in_out => "add" / "subtract"

	zoom_in_out_till_element_display(by, in_out, access_value) # in_out => "add" / "subtract"


Input API's
------------

	click(by, access_value)

	double_click(access_type,access_value)

	click_forcefully(access_type, access_name)

	submit(by, access_value)

	enter_text(by, text, access_value)

	clear_text(by, access_value)

	check_checkbox(by, access_value)

	uncheck_checkbox(by, access_value)

	toggle_checkbox(by, access_value)

	select_radio_button(by, access_value)

	get_page_title()

	get_element_text(by, access_value)

	get_element_attribute(by, access_value, attribute)

	is_element_enabled(by, access_value)

	is_element_displayed(by, access_value)

	hover_over_element(by, access_value)
	
	by => "locators type" ("id", "name", "class", "xpath", "css") 

	access_value => "locator value"


Javascript Handling API
-----------------------

	handle_alert(decision) 		# decision => "accept" / "dismiss"

	get_alert_text

	
Progress API's
--------------

	wait(time_in_sec)

	wait_for_element_to_display(by, access_value, duration)

	wait_for_element_to_enable(by, access_value, duration)


	by => "locators type" ("id", "name", "class", "xpath", "css") 

	access_value => "locator value"

	duration => duration in seconds.


Image Comparing API
-------------------

	does_images_similar?(actual_img_by, actual_img_access_value, excp_img_by, excp_img_access_value)

	
	actual_img_by => "element locators" ("id", "name", "class", "xpath", "css", "url") 

	actual_img_access_value => "locator value"


	excp_img_by => "image location" ("id", "url", "image_name") 

	excp_img_access_value => "value"


Screenshot API
--------------
	take_screenshots


Configuration API
-----------------

	print_congifugartion
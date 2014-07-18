selenium-cucumber API
=====================

If you are writing code for your custom steps you can use following methods


Navigation API's
----------------

	navigate_to(link)

	navigate(direction)  # direction=back or direction=forword

	close_driver()


Browser Interaction API's
-------------------------

	resize_browser(width,heigth)

	scroll_to_element(by,access_value)

	zoom_in_out(in_out) 

	zoom_in_out_till_element_display(by, in_out, access_value)


Input API's
------------

	click(by,access_value)

	submit(by,access_value)

	enter_text(by,text,access_value)

	clear_text(by,access_value)

	check_checkbox(by, access_value)

	uncheck_checkbox(by, access_value)

	toggle_checkbox(by, access_value)

	select_radio_button(by, access_value)

	get_page_title()

	get_element_text(by,access_value)

	get_element_attribute(by,access_value,attribute)

	is_element_enabled(by,access_value)

	is_element_displayed(by,access_value)

	
Javascript Handling API
-----------------------

	handle_alert(decesion) # accept or dismiss

	get_alert_text

	
Progress API's
--------------

	wait(time_in_sec)

	wait_for_element_to_display(by,access_value,duration)

	wait_for_element_to_enable(by,access_value,duration)


Screenshot API
--------------
	take_screenshots
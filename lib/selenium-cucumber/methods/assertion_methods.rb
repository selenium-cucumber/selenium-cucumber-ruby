require_relative 'required_files'


#Page title checking
def get_page_title
	return $driver.title
end

def check_title(title)
	if(get_page_title!=title)
		raise TestCaseFailed ,"Page Title Not Matched"
	end
end

#method to get element text
def get_element_text(access_type,access_name)
	return WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}.text
end

#Method to check element text
def check_element_text(access_type, actual_value, access_name, test_case)
	element_text = get_element_text(access_type,access_name)

	if test_case
		if(element_text!=actual_value)
			raise TestCaseFailed ,"Text Not Matched"
		end
	else
		if(element_text==actual_value)
			raise TestCaseFailed ,"Text Matched"
		end
	end
end

#method to return element status - enabled?
def is_element_enabled(access_type,access_name)
	return WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}.enabled?
end

#Element enabled checking
def check_element_enable(access_type, access_name, test_case)

	result=is_element_enabled(access_type,access_name)

	if test_case
		if(!result)
			raise TestCaseFailed ,"Element Not Enabled"
		end
	else
		if(result)
			raise TestCaseFailed ,"Element Enabled"
		end
	end
end

#method to get attribute value
def get_element_attribute(access_type,access_name,attribute_name)
	return WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}.attribute("#{attribute_name}")
end

#method to check attribute value
def check_element_attribute(access_type, attribute_name, attribute_value, access_name, test_case)

	attr_val=get_element_attribute(access_type, access_name, attribute_name)

	if test_case
		if(attr_val!=attribute_value)
			raise TestCaseFailed ,"Attribute Value Not Matched"
		end
	else
		if(attr_val==attribute_value)
			raise TestCaseFailed ,"Attribute Value Matched"
		end
	end
end

#method to get element status - displayed?
def is_element_displayed(access_type,access_name)
	WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}.displayed?
end

# method to check element presence
def check_element_presence(access_type, access_name, test_case)
	if test_case
		if !is_element_displayed(access_type,access_name)
			raise TestCaseFailed ,"Element Not Present"
		end
	else
		begin
			if is_element_displayed(access_type,access_name)
				raise "Present"
			end
		rescue Exception => e
			if e.message=="present"
				raise TestCaseFailed ,"Element Present"
			end
		end
	end
end

#method to assert checkbox check/uncheck
def is_checkbox_checked(access_type, access_name, should_be_checked=true)
	checkbox = WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}

	if !checkbox.selected? && should_be_checked
		raise TestCaseFailed ,"Checkbox is not checked"
  elsif checkbox.selected? && !should_be_checked
    raise TestCaseFailed ,"Checkbox is checked"
	end
end

#method to assert radio button selected/unselected
def is_radio_button_selected(access_type, access_name, should_be_selected=true)
	radio_button = WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}

  	if !radio_button.selected? && should_be_selected
		raise TestCaseFailed ,"Radio Button not selected"
  	elsif radio_button.selected? && !should_be_selected
    	raise TestCaseFailed ,"Radio Button is selected"
	end
end


#method to assert option from radio button group is selected/unselected
def is_option_from_radio_button_group_selected(access_type, by, option, access_name, should_be_selected=true)
  radio_button_group = WAIT.until{$driver.find_elements(:"#{access_type}" => "#{access_name}")}

  getter = ->(rb, by) { by == 'value' ? rb.attribute('value') : rb.text }

  ele = radio_button_group.find { |rb| getter.call(rb, by) == option }

  if !ele.selected? && should_be_selected
    raise TestCaseFailed ,'Radio button is not selected'
  elsif ele.selected? && !should_be_selected
    raise TestCaseFailed ,'Radio button is selected'
  end
end

#method to get javascript pop-up alert text
def get_alert_text
	$driver.switch_to.alert.text
end

#method to check javascript pop-up alert text
def check_alert_text text
	if get_alert_text!=text
  		raise TestCaseFailed , "Text on alert pop up not matched"
  	end
end

def is_option_from_dropdown_selected(access_type, by, option, access_name, should_be_selected=true)
	dropdown = WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}
  	select_list = Selenium::WebDriver::Support::Select.new(dropdown)

  	puts select_list.first_selected_option.attribute("value")

  	if by=="text"
  		actual_value = select_list.first_selected_option.text
  	else
  		actual_value = select_list.first_selected_option.attribute("value")
  	end

  	if !actual_value==option && should_be_selected
  		raise TestCaseFailed , "Option Not Selected From Dropwdown"
  	elsif actual_value==option && !should_be_selected
  		raise TestCaseFailed , "Option Selected From Dropwdown"
  	end
end

#Method to find difference between images
def compare_image(actual_img_url,expected_img_url)
	images = [
	  ChunkyPNG::Image.from_file(open(actual_img_url)),
	  ChunkyPNG::Image.from_file(open(expected_img_url))
	 ]

	 diff = []

	 images.first.height.times do |y|
	  images.first.row(y).each_with_index do |pixel, x|
	    diff << [x,y] unless pixel == images.last[x,y]
	  end
	 end

	 puts "pixels (total):     #{images.first.pixels.length}"
	 puts "pixels changed:     #{diff.length}"
	 puts "pixels changed (%): #{(diff.length.to_f / images.first.pixels.length) * 100}%"

	 if diff.length != 0
		x, y = diff.map{ |xy| xy[0] }, diff.map{ |xy| xy[1] }
	    images.last.rect(x.min, y.min, x.max, y.max, ChunkyPNG::Color.rgb(0,255,0))
	    curTime = Time.now.strftime('%Y%m%d%H%M%S%L')
	    images.last.save("difference_#{curTime}.png")
	   raise TestCaseFailed , "Actual image is different from expected image"
	 end
end

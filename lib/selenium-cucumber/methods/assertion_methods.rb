require_relative 'required_files'


#Page title checking
def check_title(title)
	if($driver.title!=title)
		raise "Page Title Not Matched"
	end
end

#Method to check element text
def check_element_text(access_type, actual_value, access_name, test_case)
	 # seconds
	element_text = WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}.text
	

	if test_case
		if(element_text!=actual_value)		
			raise "Text Not Matched"
		end
	else
		if(element_text==actual_value)		
			raise "Text Matched"
		end
	end
end

#Element enabled checking 
def check_element_enable(access_type, access_name, test_case)
	
	result=WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}.enabled?

	if test_case
		if(!result)		
			raise "Element not enabled"
		end
	else
		if(result)		
			raise "Element enabled"
		end
	end
end

# method to check attribute value
def check_element_attribute(access_type, attribute_name , attribute_value, access_name, test_case)
	
	attr_val=WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}.attribute("#{attribute_name}")
	
	if test_case
		if(attr_val!=attribute_value)	
			raise "Attribute Not Matched"
		end
	else
		if(attr_val==attribute_value)	
			raise "Attribute Matched"
		end
	end
end

# method to check element presence
def check_element_presence(access_type, access_name, test_case)
	result = WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}.displayed?

	if test_case
		if !result
			raise "Excpetion : Element Not Present"
		else
			puts $driver.find_element(:"#{access_type}" => "#{access_name}").text
		end
	else
		begin
			puts $driver.find_element(:"#{access_type}" => "#{access_name}").text
			raise "present"
		rescue Exception => e
			if e.message=="present"
				raise "Exception : Element Present"	
			end
		end
	end
end

#method to assert checkbox check
def is_checkbox_checked(access_type, access_name)
	checkbox = WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}
	
	if !checkbox.selected?
		raise "Checkbox not checked"
	end
end

#method to assert checkbox uncheck
def is_checkbox_unchecked(access_type, access_name)
	checkbox = WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}
	
	if checkbox.selected?
		raise "Checkbox checked"
	end
end

#method to assert checkbox check
def is_radio_button_selected(access_type, access_name)
	radio_button = WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}
	
	if !radio_button.selected?
		raise "Radio button is not selected"
	end
end

#method to assert checkbox uncheck
def is_radio_button_unselected(access_type, access_name)
	radio_button = WAIT.until{$driver.find_element(:"#{access_type}" => "#{access_name}")}
	
	if radio_button.selected?
		raise "Radio button is not selected"
	end
end


#method to assert option from radio button group is selected
def is_option_from_radio_button_group_selected(access_type, by, option, access_name)
	radio_button_group = WAIT.until{$driver.find_elements(:"#{access_type}" => "#{access_name}")}
	
  	i=0
  	
  	if by=="value"
  		while i<radio_button_group.length
  			if radio_button_group[i].attribute("value")==option
  				if !radio_button_group[i].selected?
  					raise "Radio button is not selected"
  				end
  				break
  			end
  			i=i+1
  		end
  	else
  		while i<radio_button_group.length
  			if radio_button_group[i].text==option
  				if !radio_button_group[i].selected?
  					raise "Radio button is not selected"
  				end
  				break
  			end
  			i=i+1
  		end  		  	
  	end
end

#method to assert option from radio button group is not selected
def is_option_from_radio_button_group_not_selected(access_type, by, option, access_name)
	radio_button_group = WAIT.until{$driver.find_elements(:"#{access_type}" => "#{access_name}")}
	
  	i=0
  	
  	if by=="value"
  		while i<radio_button_group.length
  			if radio_button_group[i].attribute("value")==option
  				if radio_button_group[i].selected?
  					raise "Radio button is selected"
  				end
  				break
  			end
  			i=i+1
  		end
  	else
  		while i<radio_button_group.length
  			if radio_button_group[i].text==option
  				if radio_button_group[i].selected?
  					raise "Radio button is selected"
  				end
  				break
  			end
  			i=i+1
  		end  		  	
  	end
end
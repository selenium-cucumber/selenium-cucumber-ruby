require 'rubygems'
require "selenium-webdriver"

# method to enter text into textfield
def enter_text(access_type,text,access_name)
	element = $driver.find_element(:"#{access_type}" => "#{access_name}").send_keys text
end

# method to clear text from textfield
def clear_text(access_type,access_name)
	element = $driver.find_element(:"#{access_type}" => "#{access_name}").clear
end

# method to select option from dropdwon list
def select_option_from_dropdown(access_type, by, option, access_name)
	dropdown = $driver.find_element(:"#{access_type}" => "#{access_name}")
  	select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  	select_list.select_by(:"#{by}", "#{option}")
end

# method to unselect all option from dropdwon list
def unselect_option_from_dropdown(access_type, access_name)
	dropdown = $driver.find_element(:"#{access_type}" => "#{access_name}")
  	select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  	select_list.deselect_all()
end

#method to check checkbox
def check_checkbox(access_type, access_name)
	checkbox = $driver.find_element(:"#{access_type}" => "#{access_name}")
	
	if !checkbox.selected?
		checkbox.click
	end
end

#method to uncheck checkbox
def uncheck_checkbox(access_type, access_name)
	checkbox = $driver.find_element(:"#{access_type}" => "#{access_name}")
	
	if checkbox.selected?
		checkbox.click
	end
end

#method to select radio button
def toggle_checkbox(access_type, access_name)
	$driver.find_element(:"#{access_type}" => "#{access_name}").click
end

#method to select radio button
def select_radio_button(access_type, access_name)
	radio_button = $driver.find_element(:"#{access_type}" => "#{access_name}")
	
	if !radio_button.selected?
		radio_button.click
	end
end

#method to select option from radio button group
def select_option_from_radio_button_group(access_type, by, option, access_name)
	radio_button_group = $driver.find_elements(:"#{access_type}" => "#{access_name}")
	
  	i=0
  	
  	if by=="value"
  		while i<radio_button_group.length
  			if radio_button_group[i].attribute("value")==option
  				if !radio_button_group[i].selected?
  					radio_button_group[i].click
  				end
  				break
  			end
  			i=i+1
  		end
  	else
  		while i<radio_button_group.length
  			if radio_button_group[i].text==option
  				if !radio_button_group[i].selected?
  					radio_button_group[i].click
  				end
  				break
  			end
  			i=i+1
  		end  		  	
  	end
end
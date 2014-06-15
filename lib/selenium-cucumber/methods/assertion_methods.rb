require 'rubygems'
require "selenium-webdriver"

#Page title checking
def check_title(title)
	if($driver.title!=title)
		raise "Page Title Not Matched"
	end
end

#Element Value checking
def check_element_value(access_type, actual_value, access_name, test_case)
	if test_case
		if($driver.find_element(:"#{access_type}" => "#{access_name}").attribute("value")!=actual_value)		
			raise "Value Not Matched"
		end
	else
		if($driver.find_element(:"#{access_type}" => "#{access_name}").attribute("value")==actual_value)		
			raise "Value Matched"
		end
	end
end

#Element enabled checking 
def check_element_enable(access_type, access_name, test_case)
	if test_case
		if(!$driver.find_element(:"#{access_type}" => "#{access_name}").enabled?)		
			raise "Element not enabled"
		end
	else
		if($driver.find_element(:"#{access_type}" => "#{access_name}").enabled?)		
			raise "Element enabled"
		end
	end
end
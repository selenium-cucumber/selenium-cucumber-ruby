require_relative 'required_files'


def click(access_type,access_name)	
	element = WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}.click
end

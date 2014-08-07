require_relative 'required_files'


def click(access_type,access_name)	
	WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}.click
end

def click_forcefully(access_type, access_name)
	$driver.execute_script('arguments[0].click();', WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")})
end

def double_click(access_type,access_value)
	element = WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_value}")}
	$driver.action.double_click(element).perform
end

def submit(access_type,access_name)	
	WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}.submit
end

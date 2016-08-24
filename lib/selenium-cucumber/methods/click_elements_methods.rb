require_relative 'required_files'

def click(access_type, access_name)
  $driver.find_element(:"#{access_type}" => "#{access_name}").click
end

def click_by_text(access_type, access_name, text)
  element_found = false
  # find all elements, and filter.
  elements = $driver.find_elements(:"#{access_type}" => "#{access_name}")
  elements.each do |element|
    if element.text == text
      element_found = true
      element.click
      break
    end
  end
  raise "Element not found having access type #{access_type}, access name #{access_name}, and text #{text}" if not element_found
end

def click_forcefully(access_type, access_name)
  $driver.execute_script('arguments[0].click();', $driver.find_element(:"#{access_type}" => "#{access_name}"))
end

def double_click(access_type, access_value)
  element = $driver.find_element(:"#{access_type}" => "#{access_value}")
  $driver.action.double_click(element).perform
end

def submit(access_type, access_name)
  $driver.find_element(:"#{access_type}" => "#{access_name}").submit
end





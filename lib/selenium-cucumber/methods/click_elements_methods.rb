require_relative 'required_files'


def click(access_type, access_name)
  WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }.click
end

def click_forcefully(access_type, access_name)
  $driver.execute_script('arguments[0].click();', WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") })
end

def double_click(access_type, access_value)
  element = WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_value}") }
  $driver.action.double_click(element).perform
end

def submit(access_type, access_name)
  WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }.submit
end

def long_press(type, access_name, duration)
  element = WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }
  parameters = { "element" => "#{element}", "duration" => "#{duration}" }
  args = parameters.select { |k, v| [:element, :duration].include? k }
  args = args_with_ele_ref(args)
  chain_method(:longPress, args)
end

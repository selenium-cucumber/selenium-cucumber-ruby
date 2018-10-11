require_relative 'required_files'

# method to enter text into textfield
def enter_text(access_type, text, access_name)
  $driver.find_element(:"#{access_type}" => "#{lookup(access_name)}").send_keys lookup(text)
end

# method to clear text from textfield
def clear_text(access_type, access_name)
  $driver.find_element(:"#{access_type}" => "#{lookup(access_name)}").clear
end

# method to select option from dropdwon list
def select_option_from_dropdown(access_type, by, option, access_name)
  dropdown = $driver.find_element(:"#{access_type}" => "#{lookup(access_name)}")
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:"#{by}", "#{option}")
end

# method to select all option from dropdwon list
def select_all_option_from_multiselect_dropdown(access_type, access_name)
  dropdown = $driver.find_element(:"#{access_type}" => "#{lookup(access_name)}")
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_all
end

# method to unselect all option from dropdwon list
def unselect_all_option_from_multiselect_dropdown(access_type, access_name)
  dropdown = $driver.find_element(:"#{access_type}" => "#{lookup(access_name)}")
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.deselect_all
end

# method to check checkbox
def check_checkbox(access_type, access_name)
  checkbox = $driver.find_element(:"#{access_type}" => "#{lookup(access_name)}")
  checkbox.click unless checkbox.selected?
end

# method to uncheck checkbox
def uncheck_checkbox(access_type, access_name)
  checkbox = $driver.find_element(:"#{access_type}" => "#{lookup(access_name)}")

  if checkbox.selected?
    checkbox.click
  end
end

# method to select radio button
def toggle_checkbox(access_type, access_name)
  $driver.find_element(:"#{access_type}" => "#{lookup(access_name)}").click
end

# method to select radio button
def select_radio_button(access_type, access_name)
  radio_button = $driver.find_element(:"#{access_type}" => "#{lookup(access_name)}")
  radio_button.click unless radio_button.selected?
end

# method to select option from radio button group
def select_option_from_radio_button_group(access_type, by, option, access_name)
  radio_button_group = $driver.find_elements(:"#{access_type}" => "#{lookup(access_name)}")
  
  getter = ->(rb, by) { by == 'value' ? rb.attribute('value') : rb.text }
  ele = radio_button_group.find { |rb| getter.call(rb, by) == option }
  ele.click unless ele.selected?
end

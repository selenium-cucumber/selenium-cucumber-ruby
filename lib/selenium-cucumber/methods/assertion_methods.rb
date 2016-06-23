require 'net/https'
require_relative 'required_files'

# This file contains assertion methods which are called from assertion_steps.rb

# Method to return page title
def get_page_title
  $driver.title
end

# Method to verify title
# param 1 : String : expected title
# param 2 : Boolean : test case [true or flase]
def check_title(title, test_case)
  page_title = get_page_title

  if test_case
    expect(page_title).to eq title
  else
    expect(page_title).to_not eq title
  end
end

# Method to verify partial title
# param 1 : String : partial title string
# param 2 : Boolean : test case [true or flase]
def check_partial_title(partial_text_title, test_case)
  page_title = get_page_title

  if test_case
    expect(page_title).to include(partial_text_title)
  else
    expect(page_title).to_not include(partial_text_title)
  end
end

# Method to get element text
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Locator value
def get_element_text(access_type, access_name)
  $driver.find_element(:"#{access_type}" => "#{access_name}").text
end

# Method to check element text
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Expected element text
# param 3 : String : Locator value
# param 4 : Boolean : test case [true or flase]
def check_element_text(access_type, expected_value, access_name, test_case)
  element_text = get_element_text(access_type, access_name)
  if test_case
    expect(element_text).to eq expected_value
  else
    expect(element_text).to_not eq expected_value
  end
end

# Method to check partial element text
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Expected element partial text
# param 3 : String : Locator value
# param 4 : Boolean : test case [true or flase]
def check_element_partial_text(access_type, expected_value, access_name, test_case)
  element_text = get_element_text(access_type, access_name)

  if test_case
    expect(element_text).to include(expected_value)
  else
    expect(element_text).to_not include(expected_value)
  end
end

# Method to return element status - enabled?
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Locator value
def is_element_enabled(access_type, access_name)
  $driver.find_element(:"#{access_type}" => "#{access_name}").enabled?
end

# Element enabled checking
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Expected element text
# param 4 : Boolean : test case [true or flase]
def check_element_enable(access_type, access_name, test_case)
  result = is_element_enabled(access_type, access_name)
  if test_case
    expect(result).to be true
  else
    expect(result).to be false
  end
end

# method to get attribute value
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Expected element text
# param 3 : String : atrribute name
def get_element_attribute(access_type, access_name, attribute_name)
  $driver.find_element(:"#{access_type}" => "#{access_name}").attribute("#{attribute_name}")
end

# method to check attribute value
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : atrribute name
# param 3 : String : atrribute value
# param 4 : String : Locator value
# param 5 : Boolean : test case [true or flase]
def check_element_attribute(access_type, attribute_name, attribute_value, access_name, test_case)

  attr_val = get_element_attribute(access_type, access_name, attribute_name)

  if test_case
    expect(attr_val).to eq(attribute_value)
  else
    expect(attr_val).to_not eq(attribute_value)
  end
end

# method to get element status - displayed?
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Locator value
def is_element_displayed(access_type, access_name)
  begin
    $driver.find_element(:"#{access_type}" => "#{access_name}").displayed?
  rescue Selenium::WebDriver::Error::NoSuchElementError
    # elements not found return false
    false
  end
end

# method to check element presence
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Locator value
# param 3 : Boolean : test case [true or flase]
def check_element_presence(access_type, access_name, test_case)
  expect(is_element_displayed(access_type, access_name)).to be test_case
end

# method to assert checkbox check/uncheck
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Locator value
# param 3 : Boolean : test case [true or flase]
def is_checkbox_checked(access_type, access_name, should_be_checked = true)
  checkbox = $driver.find_element(:"#{access_type}" => "#{access_name}")

  expect(checkbox.selected?).to be should_be_checked
end

# method to assert radio button selected/unselected
# param 1 : String : Locator type (id, name, class, xpath, css)
# param 2 : String : Locator value
# param 3 : Boolean : test case [true or flase]
def is_radio_button_selected(access_type, access_name, should_be_selected = true)
  radio_button = $driver.find_element(:"#{access_type}" => "#{access_name}")
  expect(radio_button.selected?).to be should_be_selected
end

# method to assert option from radio button group is selected/unselected
def is_option_from_radio_button_group_selected(access_type, by, option, access_name, should_be_selected = true)
  radio_button_group = $driver.find_elements(:"#{access_type}" => "#{access_name}")

  getter = ->(rb, by) { by == 'value' ? rb.attribute('value') : rb.text }

  ele = radio_button_group.find { |rb| getter.call(rb, by) == option }

  expect(ele.selected?).to be should_be_selected
end

# method to get javascript pop-up alert text
def get_alert_text
  $driver.switch_to.alert.text
end

# method to check javascript pop-up alert text
def check_alert_text(text)
  expect(get_alert_text).to eq text
end

def is_option_from_dropdown_selected(access_type, by, option, access_name, should_be_selected=true)
  dropdown = $driver.find_element(:"#{access_type}" => "#{access_name}")
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)

  if by == 'text'
    actual_value = select_list.first_selected_option.text
  else
    actual_value = select_list.first_selected_option.attribute('value')
  end
  expect(actual_value).to eq option 
end

# Method to find difference between images
def does_images_similar?(actual_img_access_type, actual_img_access_name, excp_img_access_type, excp_img_access_name)
  if !compare_image(actual_img_access_type, actual_img_access_name, excp_img_access_type, excp_img_access_name)
    raise TestCaseFailed, 'Actual image is different from expected image'
  end
end

# Method to compare two images
# param 1 : String : Locator type (id, name, class, xpath, css, url)
# param 2 : String : Locator value
# param 3 : String : Locator type (id, name, class, xpath, css, url, image_name)
# param 4 : String : Locator value
def compare_image(actual_img_access_type, actual_img_access_name, excp_img_access_type, excp_img_access_name)
  if actual_img_access_type == 'url'
    actual_img_url = actual_img_access_name
  else
    actual_img_url = get_element_attribute(actual_img_access_type, actual_img_access_name, 'src')
  end

  if excp_img_access_type == 'url'
    expected_img_url = excp_img_access_name
  elsif excp_img_access_type == 'image_name'
    expected_img_url = './features/expected_images/' + excp_img_access_name
  else
    expected_img_url = get_element_attribute(excp_img_access_type, excp_img_access_name, 'src')
  end

  # replace 'https' with 'http' from actual image url
  if actual_img_url.include? 'https'
    actual_img_url['https'] = 'http'
  end

  # replace 'https' with 'http' from expected image url
  if expected_img_url.include? 'https'
    expected_img_url['https'] = 'http'
  end

  if expected_img_url.include? '.png'
    image_type = 'png'
  else
    image_type = 'jpg'
  end

  # Storing actual image locally
  open('./features/actual_images/actual_image.' + image_type, 'wb') do |file|
    file << open(actual_img_url).read
  end
  
  actual_img_url = './features/actual_images/actual_image.' + image_type

  # Storing Expected image locally
  if excp_img_access_type != 'image_name'
    open('./features/expected_images/expected_image.' + image_type, 'wb') do |file|
      file << open(expected_img_url).read
    end
    expected_img_url = './features/expected_images/expected_image.' + image_type
  end

  # Verify image extension and call respective compare function
  if image_type == 'png'
    return compare_png_images(expected_img_url, actual_img_url)
  end

  compare_jpeg_images(expected_img_url, actual_img_url)
end

# Comparing jpg images
def compare_jpeg_images(expected_img_url, actual_img_url)
  if open(expected_img_url).read == open(actual_img_url).read
    return true
  else
    puts 'Difference in images'
    return false
  end
end

# Comparing png images
def compare_png_images(expected_img_url, actual_img_url)
  images = [
    ChunkyPNG::Image.from_file(expected_img_url),
    ChunkyPNG::Image.from_file(actual_img_url)
  ]

  diff = []

  images.first.height.times do |y|
    images.first.row(y).each_with_index do |pixel, x|
      diff << [x, y] unless pixel == images.last[x, y]
    end
  end

  if diff.length != 0
    puts "\npixels (total):     #{images.first.pixels.length}"
    puts "pixels changed:     #{diff.length}"
    puts "pixels changed (%): #{(diff.length.to_f / images.first.pixels.length) * 100}%"

    x, y = diff.map { |xy| xy[0] }, diff.map { |xy| xy[1] }
    images.last.rect(x.min, y.min, x.max, y.max, ChunkyPNG::Color.rgb(0, 255, 0))
    cur_time = Time.now.strftime('%Y%m%d%H%M%S%L')
    images.last.save("./features/image_difference/difference_#{cur_time}.png")

    puts "\nDifference between images saved as : difference_#{cur_time}.png\n"
    return false
  end
  true
end

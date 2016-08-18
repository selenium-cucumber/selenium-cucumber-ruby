require_relative 'required_files'

# method to open link
def navigate_to(link)
  $driver.get link
end

# method to navigate back & forword
def navigate(direction)
  if direction == 'back'
	  $driver.navigate.back
  else
    $driver.navigate.forward
  end
end

# method to quite webdriver instance
def close_driver
  $driver.quit
end

# method to return key (control/command) by os wise
def get_key
  os = $driver.capabilities.platform.to_s.upcase
  if os.to_s == 'WINDOWS' || os.to_s == 'LINUX'
    return 'control'
  elsif os.to_s == 'DARWIN'
    return 'command'
  else
    raise 'Invalid OS'
  end
end

# Method to zoom in/out/reset page
def zoom_in_out(operation)
  if $driver.capabilities.browser_name == 'chrome'
    actual_zoom = $driver.execute_script "return document.body.style.zoom"
    puts "actual_zoom:#{actual_zoom}"
    if actual_zoom == '' or actual_zoom == nil
      actual_zoom = 100
    else
      actual_zoom = actual_zoom.delete '%'
      actual_zoom = actual_zoom.to_i
    end
    
    if operation == 'add'
      actual_zoom += 15 unless actual_zoom >= 500
    elsif operation == 'subtract'
      actual_zoom -= 15 unless actual_zoom <= 25
    else
      actual_zoom = 100
    end
    puts "actual_zoom:#{actual_zoom}"
    $driver.execute_script "document.body.style.zoom='#{actual_zoom}%'"
  else
    html = $driver.find_element(:tag_name => "body")
    $driver.action.send_keys(html, :"#{get_key}", :"#{operation}" ).perform
  end
end

# Method to zoom in/out web page until web element displyas
def zoom_in_out_till_element_display(access_type, operation, access_name)
  while true
    if WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }.displayed?
      break
    else
      zoom_in_out(operation)
    end
  end
end

# Method to resize browser
def resize_browser(width, heigth)
  $driver.manage.window.resize_to(width, heigth)
end

# Method to maximize browser
def maximize_browser
  $driver.manage.window.maximize
end

# Method to hover on element
def hover_over_element(access_type, access_name)
  element = WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}
  $driver.action.move_to(element).perform
end

# Method to scroll page to perticular element
def scroll_to_element(access_type, access_name)
  ele_scroll = WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}
  ele_scroll.location_once_scrolled_into_view
end

# method to scroll page to top or end
def scroll_page(to)
  if to == 'end'
    $driver.execute_script('window.scrollTo(0,Math.max(document.documentElement.scrollHeight,document.body.scrollHeight,document.documentElement.clientHeight));')
  elsif to == 'top'
    $driver.execute_script('window.scrollTo(Math.max(document.documentElement.scrollHeight,document.body.scrollHeight,document.documentElement.clientHeight),0);')
  else
    raise "Exception : Invalid Direction (only scroll \"top\" or \"end\")"
  end
end

# Method to switch to old window
def switch_to_previous_window
  $driver.switch_to.window $previous_window
end

# Method to switch to new window
def switch_to_new_window
  $previous_window = $driver.window_handle
  $driver.switch_to.window($driver.window_handles.last)
end

# Method to switch to main window
def switch_to_main_window
  $previous_window = $driver.window_handle
  $driver.switch_to.window($driver.window_handles.first)
end

# Method to switch to window by title
def switch_to_window_by_title window_title
  $previous_window = $driver.window_handle
  window_found = false
  $driver.window_handles.each{ |handle|
    $driver.switch_to.window handle
    if $driver.title == window_title
      window_found = true
      break
    end
  }
  raise "Window having title \"#{window_title}\" not found" if not window_found
end

def switch_to_window_by_url window_url
  $previous_window = $driver.window_handle
  window_found = false
  $driver.window_handles.each { |handle|
    $driver.switch_to.window handle
    # match absolute or relative
    if $driver.current_url.include?(window_url)
      window_found = true
      break
    end
  }
  raise "Window having url \"#{window_url}\" not found" if not window_found
end

# Method to close new window
def close_new_window
  $driver.close
end

# method to switch frame
def switch_frame frame
  $driver.switch_to.frame(frame)
end

# method to switch to main window
def switch_to_main_content
  $driver.switch_to.default_content
end

=begin
def switch_to_new_window
  win_handles = $driver.window_handles
  
  puts $driver.title
  puts win_handles.length
  
  $driver.switch_to.window($driver.window_handles[1])
  puts $driver.window_handles[1]
  puts $driver.title

  $driver.switch_to.window($driver.window_handles[2])
  puts $driver.window_handles[2]
  puts $driver.title
end
=end
require_relative 'required_files'

#method to open link
def navigate_to(link)
	  $driver.get link
end

#method to navigate back & forword
def navigate(direction)
  if direction=="back"
	   $driver.navigate.back
  else
    $driver.navigate.forward
  end
end

#method to quite webdriver instance
def close_driver
	$driver.close
end

#Method to zoom in/out page
def zoom_in_out(in_out)
  if get_os=="windows"
    key="control"
  elsif get_os=="mac"
    key="command"
  end

  $driver.action.key_down(:"#{key}").send_keys(:"#{in_out}").key_up(:"#{key}").perform
end

#Method to zoom in/out web page until web element displyas
def zoom_in_out_till_element_display(access_type, in_out, access_name)
  
  if get_os=="windows"
    key="control"
  elsif get_os=="mac"
    key="command"
  end

  while true
    
      if WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}.displayed?
        break
      else
        $driver.action.key_down(:"#{key}").send_keys(:"#{in_out}").key_up(:"#{key}").perform
      end
  end

end

#Method to resize browser
def resize_browser(width,heigth)
  $driver.manage.window.resize_to(width,heigth)
end

#Method to maximize browser
def maximize_browser
  $driver.manage().window().maximize()
end

#Method to hover on element
def hover_over_element(access_type,access_name)
  element = WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}
  $driver.action.move_to(element).perform
end

#Method to scroll page to perticular element
def scroll_to_element(access_type,access_name)
  ele_scroll = WAIT.until {$driver.find_element(:"#{access_type}" => "#{access_name}")}
  ele_scroll.location_once_scrolled_into_view
end

#method to scroll page to top or end
def scroll_page(to)
  if to=="end"
    $driver.execute_script("window.scrollTo(0,Math.max(document.documentElement.scrollHeight,document.body.scrollHeight,document.documentElement.clientHeight));")
  elsif to=="top"
    $driver.execute_script("window.scrollTo(Math.max(document.documentElement.scrollHeight,document.body.scrollHeight,document.documentElement.clientHeight),0);")    
  else
    raise "Exception : Invalid Direction (only scroll \"top\" or \"end\")"
  end
end

$old_win=nil

def switch_to_new_window
  $old_win = $driver.window_handle
  $driver.switch_to.window($driver.window_handles[1])
end

def switch_to_old_window
  $driver.switch_to.window($old_win)
end

def get_os
  case CONFIG['host_os']
  when /mingw32|windows/i
    # Windows
    return "windows"
  when /linux|arch/i
    # Linux
    return "linux"
  when /sunos|solaris/i
    # Solaris
    return "solaris"
  when /darwin/i
    #MAC OS X
    return "mac"
  else
    # whatever
    return "Other"
  end
end



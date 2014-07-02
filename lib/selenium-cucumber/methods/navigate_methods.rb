require 'rubygems'
require "selenium-webdriver"


def navigate_to(link)
	$driver.get link
end

def navigate(direction)
	$driver.navigate.direction
end

def close_driver
	$driver.quit
end

def scroll_to_element(access_type,access_name)
	ele_scroll = $driver.find_element(:"#{access_type}" => "#{access_name}")
  	ele_scroll.location_once_scrolled_into_view
end

def zoom_in_out(in_out)
  if get_os=="windows"
    key="control"
  elsif get_os=="mac"
    key="command"
  end

  $driver.action.key_down(:"#{key}").send_keys(:"#{in_out}").key_up(:"#{key}").perform
end


def zoom_in_out_till_element_display(access_type, in_out, access_name)
  
  if get_os=="windows"
    key="control"
  elsif get_os=="mac"
    key="command"
  end

  while true
    
      if $driver.find_element(:"#{access_type}" => "#{access_name}").displayed?
        break
      else
        $driver.action.key_down(:"#{key}").send_keys(:"#{in_out}").key_up(:"#{key}").perform
      end
  end

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

def resize_browser(width,heigth)
  $driver.manage.window.resize_to(width,heigth)
end

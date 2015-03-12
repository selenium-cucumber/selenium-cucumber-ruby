require_relative 'required_files'

def get_coordinates(access_type1, access_name1, access_type2, access_name2)
  
  # to get start x,y co-ordinates 
  ele_from = WAIT.until { $driver.find_element(:"#{access_type1}" => "#{access_name1}") }.location
  $start_x = ele_from.x
  $start_y = ele_from.y

  # to get end x,y co-ordinates 
  ele_to = WAIT.until { $driver.find_element(:"#{access_type2}" => "#{access_name2}") }.location
  $end_x = ele_to.x
  $end_y = ele_to.y
  
  return $start_x, $start_y, $end_x, $end_y
end

def swipe(start_x, start_y, end_x, end_y)
    action = Appium::TouchAction.new.press(x: "#{start_x}", y: "#{start_y}").wait(1000).move_to(x: "#{end_x}", y:  "#{end_y}").release()
    action.perform
end
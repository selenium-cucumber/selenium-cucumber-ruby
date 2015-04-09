require_relative 'required_files'

def swipe_using_elements(access_type1, access_name1, access_type2, access_name2)
  
  # to get start x,y co-ordinates 
  ele_from = WAIT.until { $driver.find_element(:"#{access_type1}" => "#{access_name1}") }.location
  start_x = ele_from.x
  start_y = ele_from.y

  # to get end x,y co-ordinates 
  ele_to = WAIT.until { $driver.find_element(:"#{access_type2}" => "#{access_name2}") }.location
  end_x = ele_to.x
  end_y = ele_to.y
  
  swipe(start_x, start_y, end_x, end_y)
end

def swipe(start_x, start_y, end_x, end_y)
    action = Appium::TouchAction.new.press(x: "#{start_x}", y: "#{start_y}").wait(1000).move_to(x: "#{end_x}", y:  "#{end_y}").release()
    action.perform
end

def swipe_direction(direction)
  size = $driver.manage.window.size
  height = size.height.to_i - 10
  width = size.width.to_i - 10

  if direction == 'right'
    start_x = (width/100) * 15  # 83
    start_y = height/2 # 695
    end_x = (width/100) * 90 # 900
    end_y = height/2 # 630
  elsif direction == 'left'
    start_x = (width/100) * 90
    start_y = height/2
    end_x = (width/100) * 15
    end_y = height/2
  elsif direction == 'up'
    start_x = width/2
    start_y = (height/100) * 90
    end_x = width/2
    end_y = (height/100) * 15
  elsif direction == 'down'
    start_x = width/2
    start_y = (height/100) * 15
    end_x = width/2
    end_y = (height/100) * 90
  else
    raise "invalid direction"
  end

  swipe(start_x, start_y, end_x, end_y)
end

def swipe_element_with_direction(access_type, access_name, direction)
    ele_from = WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }.location
    x_start = ele_from.x
    y_start = ele_from.y

    ele_size = WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }
    ele_height = ele_size.size.height.to_i
    ele_width =  ele_size.size.width.to_i
    #puts ele_size.width

    x_end = x_start + ele_width
    y_end = y_start + ele_height

    puts "[#{x_start},#{y_start}],[#{x_end},#{y_end}]"

    puts "ele_height : #{ele_height}" # 1776
    puts "ele_width :#{ele_width}" #  

    size = $driver.manage.window.size
    height = size.height.to_i - 5
    puts "height : #{height}" # 1776
    width = size.width.to_i - 5
    puts "width :#{width}" #

  if direction == 'right'
    start_x = x_start + (ele_width*0.25)
    start_y = (y_start) + (ele_height/2)
    end_x = width # 900
    end_y = (y_start) + (ele_height/2)
  elsif direction == 'left'
    start_x = x_end - 5
    start_y = (y_end) - (ele_height/2)
    end_x = 10
    end_y = (y_end) - (ele_height/2)
  elsif direction == 'up'
    if ele_height > height
      ele_height = height
    end

    if y_end > height
      y_end = y_start + ele_height
    end

    puts "ele_height: #{ele_height}"
    puts "ele_height*).75: #{ele_height*0.75}"
    puts y_end
    start_x = x_end - (ele_width/2)
    
    start_y = (y_end) - (ele_height*0.75)

      if start_y < 0
        y_start = 0
        y_end = y_start + ele_height
        start_y = (y_end) - (ele_height*0.75)
       # puts y_end
       # puts "y_start: #{y_start}"
       # puts "ele_height: #{ele_height}"
       # puts "ele_height*0.75: #{ele_height*0.75}" 
      end

    end_x = (x_end/2)
    end_y = 10
  elsif direction == 'down'
    start_x = x_start + (ele_width/2)
        if ele_height > height
          ele_height = height
        end
    start_y = (y_start) + (ele_height*0.25)
      if start_y < 0
        y_start = 0
        if ele_height > height
          ele_height = height
        end
      start_y = (y_start) + (ele_height*0.25)
       # puts y_end
       # puts "y_start: #{y_start}"
        puts "ele_height: #{ele_height}"
        puts "ele_height*0.25: #{ele_height*0.25}" 
      end
    end_x = x_start + (ele_width/2)
    if ele_height > height
      ele_height = height
    end
    end_y = ele_height
  else
    raise "invalid direction"
  end
  
  puts "start_x: #{start_x}, start_y: #{start_y}"
  puts "end_x: #{end_x}, end_y: #{end_y}"

  swipe(start_x, start_y, end_x, end_y)
end

def swipe_coordinates_with_direction(start_x, start_y, direction)
   
    # ele_from = WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }.size
    # height = size.height.to_i - 5
    # puts "height : #{height}" # 1776
    # width = size.width.to_i - 5
    # puts "width :#{width}" #  

    size = $driver.manage.window.size
    height = size.height.to_i - 5
    puts "height : #{height}"
    width = size.width.to_i - 5
    puts "width :#{width}"

  if direction == 'right'
    start_x = start_x
    start_y = start_y
    end_x = width
    end_y = start_y
  elsif direction == 'left'
    start_x = start_x
    start_y = start_y
    end_x = 10
    end_y = start_y
  elsif direction == 'up'
    start_x = start_x
    start_y = start_y
    end_x = start_x
    end_y = 10
  elsif direction == 'down'
    start_x = start_x
    start_y = start_y
    end_x = start_x
    end_y = height
  else
    raise "invalid direction"
  end

  swipe(start_x, start_y, end_x, end_y)
end


def long_press_on_element_default_duration(access_type, access_name)
  begin
    ele_from = WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }.location
    x = ele_from.x
    y = ele_from.y

    action = Appium::TouchAction.new.press(x: "#{x}", y: "#{y}").wait(2000).move_to(x: "#{x}", y:  "#{y}").release()
    action.perform
  rescue Exception => e
    if e.to_s == 'The swipe did not complete successfully'
      print ""
    else
      raise e
    end
  end
end

def long_press_on_element_with_duration(access_type, access_name, duration)
  begin
    ele_from = WAIT.until { $driver.find_element(:"#{access_type}" => "#{access_name}") }.location
    x = ele_from.x
    y = ele_from.y
  
    duration = duration.to_i
    duration = duration * 1000
    action = Appium::TouchAction.new.press(x: "#{x}", y: "#{y}").wait("#{duration}").move_to(x: "#{x}", y:  "#{y}").release()
    action.perform
  rescue Exception => e
    if e.to_s == 'The swipe did not complete successfully'
      print ""
    else
      raise e
    end
  end
end

def long_press_on_coordinates(x, y)
  action = Appium::TouchAction.new.press(x: "#{x}", y: "#{y}").wait(2000).move_to(x: "#{x}", y:  "#{y}").release()
  action.perform
end

def long_press_on_coordinates_with_duration(x, y, duration)
  duration = duration.to_i
  duration = duration * 1000
  puts duration
  action = Appium::TouchAction.new.press(x: "#{x}", y: "#{y}").wait("#{duration}").move_to(x: "#{x}", y:  "#{y}").release()
  action.perform
end

def close_app
  $driver.close_app
end
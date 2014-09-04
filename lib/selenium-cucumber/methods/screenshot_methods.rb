require_relative 'required_files'

def take_screenshot
  cur_time = Time.now.strftime('%Y%m%d%H%M%S%L')
  $driver.save_screenshot('./features/screenshots/screenshot' + cur_time + '.png')
end

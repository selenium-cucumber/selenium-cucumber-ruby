require_relative 'required_files'

def take_screenshot
	curTime = Time.now.strftime('%Y%m%d%H%M%S%L')
  	$driver.save_screenshot('./features/screenshots/screenshot'+curTime+'.png')
end
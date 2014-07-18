require_relative 'required_files'

def handle_alert (decesion)
  	if decesion=="accept"
		$driver.switch_to.alert.accept
  	else
    	$driver.switch_to.alert.dismiss
 	end
end
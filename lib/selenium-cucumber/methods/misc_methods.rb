
# WAIT instance for explicit wait
WAIT = Selenium::WebDriver::Wait.new(:timeout => 30)

#method to validate locator
def valid_locator_type? type
  %w(id class css name xpath).include? type
end

def validate_locator type
	raise "Invalid locator type - #{type}" unless valid_locator_type? type
end

#method to validate dropdown selector
def valid_option_by? option_by
  %w(text value index).include? option_by
end

def validate_option_by option_by
	raise "Invalid option by - #{option_by}" unless valid_locator_type? option_by
end
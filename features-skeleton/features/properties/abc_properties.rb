require 'rubygems'
require 'bundler/setup'
require 'selenium-cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code


# **-> WEB ELEMENT CLASS DEFINITION STARTS <-**
# Parent class for initializing Web Element parameters.
# A new Object of this class should be created for defining each web element.

class WebElement
   attr_reader :type, :value
   def initialize(elem_type, elem_value)
      validate_locator elem_type
      @type=elem_type
      @value=elem_value
   end
end

# Method to validate locator type of web element object
def valid_locator_type? type
  %w(id class css name xpath).include? type
end

def validate_locator type
  raise "Invalid locator type - #{type}" unless valid_locator_type? type
end

# **-> WEB ELEMENT CLASS DEFINITION ENDS <-**


# **-> Locators for Global Web Elements of ABC <-**

# EXAMPLE below
# Welcome message in the header
$welcome = WebElement.new("css", "div.welcome-txt.pull-left")
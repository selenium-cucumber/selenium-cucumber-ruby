require 'rubygems'
require "selenium-webdriver"
require 'rbconfig'
include RbConfig

WAIT = Selenium::WebDriver::Wait.new(:timeout => 30)
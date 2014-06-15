$:.push File.expand_path("../lib", __FILE__)
require "selenium-cucumber/version"

Gem::Specification.new do |s|
  s.name        = 'selenium-cucumber'
  s.version     = Selenium::Cucumber::VERSION
  s.date        = '2014-06-15'
  s.platform    = Gem::Platform::RUBY
  s.summary     = "SELENIUM WEBDRIVER 2.0 WITH RUBY & CUCUMBER"
  s.description = "A BDD approch to write automated test script for testing web application."
  s.authors     = "Sameer Sawant"
  s.homepage    = "http://sameersawant1992.wordpress.com/"
  s.email       = "sameersawant1992@gmail.com"
  s.files       = Dir['lib/*.rb'] + Dir['lib/support/*.rb']+ Dir['lib/selenium-cucumber/*.rb'] + Dir['lib/selenium-cucumber/methods/*.rb'] + Dir['bin/*.*'] + Dir['features-skeleton/*.*'] + Dir['features-skeleton/step_definitions/*.*'] + Dir['features-skeleton/support/*.*'] + Dir['doc/*.*']
  s.executables   = "selenium-cucumber"
  s.require_paths = ['lib']

  s.add_dependency('cucumber')
  s.add_dependency('selenium-webdriver')
  
end
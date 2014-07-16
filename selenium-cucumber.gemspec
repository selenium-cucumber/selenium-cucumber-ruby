$:.push File.expand_path("../lib", __FILE__)
require "selenium-cucumber/version"

Gem::Specification.new do |s|
  s.name        = 'selenium-cucumber'
  s.version     = Selenium::Cucumber::VERSION
  s.date        = Time.now
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.summary     = "SELENIUM WEBDRIVER WITH RUBY & CUCUMBER"
  s.description = "Selenium-cucumber is a behavior driven development (BDD) approach to write automation test script to test web applications.
                   It enables you to write and execute automated acceptance tests of web apps."
  s.authors     = "Sameer Sawant"
  s.homepage    = "http://seleniumcucumber.wordpress.com/"
  s.email       = "sameersawant1992@gmail.com"
  s.files       = Dir['lib/*.rb'] + Dir['lib/support/*.rb']+ Dir['lib/selenium-cucumber/*.rb'] + Dir['lib/selenium-cucumber/methods/*.rb'] + Dir['bin/*.*'] + Dir['features-skeleton/*.*'] + Dir['features-skeleton/step_definitions/*.*'] + Dir['features-skeleton/support/*.*'] + Dir['doc/*.*']
  s.executables   = "selenium-cucumber"
  s.require_paths = ['lib']
  s.post_install_message = "Thanks for installing selenium-cucumber gem."
                   
                   
  
  #s.add_dependency('cucumber')
  #s.add_dependency('selenium-webdriver')
  
end
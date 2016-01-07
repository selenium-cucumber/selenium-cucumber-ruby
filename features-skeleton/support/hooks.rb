#Cucumber provides a number of hooks which allow us to run blocks at various points in the Cucumber test cycle
AfterConfiguration do |config|
  # do something before Cucumber run test cycle and after it already configure 
end

Before do
  # Do something before each scenario.
end

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
end

After do
  # Do something after each scenario.
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.

  if(scenario.failed?)
    #Do something if scenario fails.
  end
end

#Tagged hooks

Before('@Ex_tag1, @Ex_tag2') do
  # This will only run before scenarios tagged
  # with @cucumis OR @sativus.
end

AfterStep('@Ex_tag1, @Ex_tag2') do
  # This will only run after steps within scenarios tagged
  # with @cucumis AND @sativus.
end

at_exit do
  # Do something in the end of cucumber test cycle
  $driver.quit # process for driver will be close with all windows 
end

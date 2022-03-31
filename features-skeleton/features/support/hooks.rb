#Cucumber provides a number of hooks which allow us to run blocks at various points in the Cucumber test cycle

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

After('@Ex_tag1') do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.
  if scenario.failed?
    #Do something if scenario fails.
  else
    #Do something if scenario passed.
  end
end

#Tagged hooks

Before('@Ex_tag1, @Ex_tag2') do
  # This will only run before scenarios tagged
  # with @Ex_tag1 OR @Ex_tag2.
end

AfterStep('@Ex_tag1, @Ex_tag2') do
  # This will only run before scenarios tagged
  # with @Ex_tag1 OR @Ex_tag2.
end
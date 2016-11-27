#Cucumber provides a number of hooks which allow us to run blocks at various points in the Cucumber test cycle

Before do
  # Do something before each scenario.
  #clean_slate()
end

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
  #if scenario.name != "I want see the main page"
  #  clean_slate()
  #end
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.

  #if(scenario.failed?)
  #  #Do something if scenario fails.
  #  take_screenshot(scenario.name)
  #end
end

#Tagged hooks

Before('@clanSlate') do
  # This will only run before scenarios tagged
  # with @Ex_tag1 OR @Ex_tag2.
  #clean_slate()
end

AfterStep('@Ex_tag1, @Ex_tag2') do |scenario|
  # This will only run after steps within scenarios tagged
  # with @Ex_tag1 AND @Ex_tag2.
end

Around('@Ex_tag1') do |scenario, block|
  # Will round around a scenario
end

AfterConfiguration do |config|
  # Will run after cucumber has been configured
end

# Quit the selenium driver from the example tests.
at_exit do
	$driver.quit()
end

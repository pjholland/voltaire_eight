Before do

  @browser = Selenium::WebDriver.for :firefox

  #case ENV['DRIVER']
  #  when 'headless'
  #    require "headless"
  #    headless = Headless.new(display: 100, reuse: true, destroy_at_exit: false)
  #    headless.start
  #    @local_browser = Selenium::WebDriver.for :firefox
  #  else
  #    @local_browser = Selenium::WebDriver.for :firefox
  #    @local_browser.manage.window.maximize
  #end
  #
  #p "Executing tests in #{ENV['DRIVER']} mode..." unless ENV['DRIVER'] == nil
  #@local_browser.manage.timeouts.implicit_wait = 10
  #@browser ||= @local_browser


end


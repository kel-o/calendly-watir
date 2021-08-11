require 'watir'
require 'page-object'
require 'selenium-webdriver'
require 'pry'
require 'faker'

if ENV['HEADLESS']
    require 'headless'
    headless = Headless.new
    headless.start
    at_exit do
      headless.destroy
    end
  end

Before do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end

After do |scenario|
  if scenario.failed?
     screenshot_file = "screenshot-#{Time.now.strftime('%Y%m%d-%H%M%S')}.png"
     @browser.driver.save_screenshot(screenshot_file)
     embed(screenshot_file, "image/png")
  end   
end

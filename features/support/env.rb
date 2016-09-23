require 'rspec'
require 'cucumber'
require 'watir-webdriver'
require 'page-object'
require 'watir-scroll'



$browser_type = ENV.fetch('BROWSER', 'firefox')
browser = Watir::Browser.new $browser_type.to_sym

World(PageObject::PageFactory)

def resize_browser_window(browser)
  unless ENV['MAXIMIZE_BROWSER'] == 'false'
    browser.driver.manage.window.maximize
  end

end

Before do
  @browser = browser
  @browser.cookies.clear
  resize_browser_window(@browser)

  $base_url = "https://www.wikipedia.org"
end

at_exit do
  # This ensures that we don't leave open browser instances all over the test agents!
  browser.close unless browser.nil?
  @browser.close if @browser.respond_to?(:close)
end

require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'
require 'chromedriver-helper'

Capybara.register_driver :selenium do |app|
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: { args: %w(disable-infobars window-size=1920,1080) }
    )
    Capybara::Selenium::Driver.new(app, 
    browser: :chrome,
    desired_capabilities: capabilities)
  end
  Capybara.configure do |config|
    config.default_driver = :selenium
  end
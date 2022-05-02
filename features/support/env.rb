# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://automation-sandbox.herokuapp.com/'
  config.default_max_wait_time = 10
end

require 'capybara/cucumber'
require 'site_prism'
require 'report_builder'
require 'cpf_faker'
require 'securerandom'
require 'rspec'
require 'faker'
require 'date'
require_relative 'page_helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

World(Pages)

Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :selenium_chrome
  config.default_max_wait_time = 30
  Capybara.page.driver.browser.manage.window.maximize
  config.app_host = 'https://www1.gps-pamcary.com.br'
end


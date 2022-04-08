# frozen_string_literal: true

require 'appium_console'
require 'appium_lib'
require 'cucumber'
require 'pry'
require 'selenium-webdriver'
require 'report_builder'
require 'ffaker'
require 'fileutils'
require 'rspec'
require 'require_all'
require 'yaml'

$wait = Selenium::WebDriver::Wait.new(timeout: 60)

caps = Appium.load_appium_txt file: File.expand_path("app/android/appium.txt", __dir__), verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

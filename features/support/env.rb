require 'appium_lib'
require 'rubygems'
require 'appium_console'

caps = Appium.load_appium_txt file:
File.expand_path('./../../../appium.txt', __FILE__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
# server_url = "http://127.0.0.1:4723/wd/hub"



  
require 'rubygems'
require 'appium_lib'

desired_caps = {
    caps: {
        "platformName": "Android",
        "appium:deviceName": "Android Emulator",
        "appium:app": "C:\\Users\\Lucas Ribeiro\\Desktop\\desafio-neon\\app\\cadastro_clientes_teste.apk"
    }
}

@driver = Appium::Driver.new(desired_caps)
@driver.start.driver


# server_url = "http://127.0.0.1:4723/wd/hub"



  
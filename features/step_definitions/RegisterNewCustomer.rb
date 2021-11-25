require "appium_console"
require "appium_lib"
require "cucumber"
require "rspec"
require_relative "../acts/ActsPO"
require_relative "../gets/GetsPO"


    Given('the user access the customer registration application') do
        @act = ActsPO.new
        @get = GetsPO.new
        @get.acesso_app
    end

    When('the user click on register new customer') do
        @act.cadastra_novo_cliente
    end

    Then('the register must be saved') do
        valida_cadastro = get.valida_cadastro_realizado
        expect(valida_cadastro).to eq (true)
    end
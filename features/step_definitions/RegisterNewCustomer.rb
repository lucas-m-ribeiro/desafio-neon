require "appium_console"
require "appium_lib"
require "cucumber"
require "rspec"
require_relative "../acts/ActsPO"
require_relative "../gets/GetsPO"

class RegisterNewCustomer

        @act = ActsPO.new
        @get = GetsPO.new

    given('the user access the customer registration application') do
        @get.acesso_app;
    end

    when('the user click on register new customer') do
        @act.cadastra_novo_cliente;
    end

    then('the register must be saved') do
        @act.confirma_cadastro;
    end
end
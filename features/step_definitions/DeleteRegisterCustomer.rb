require "appium_console"
require "appium_lib"
require "cucumber"
require "rspec"
require_relative "../acts/ActsPO"
require_relative "../gets/GetsPO"

class DeleteRegisterCustomer

    @act = ActsPO.new
    @get = GetsPO.new

    given('the user access the customer registration application') do
        @get.acesso_app;
    end

    when('the user click your register') do
        @act.seleciona_contato;
    end

    and('click on delete register button') do
        @act.deleta_cliente;
    end

    then('the register must be deleted') do
        @get.valida_registro_deletado;
    end
end
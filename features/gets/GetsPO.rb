require 'appium_console'
require 'appium_lib'
require 'httparty'
require 'rspec'

#classe para guardar os metodos de validação

class GetsPO

    def initialize
        @nome_app = 'br.com.dudstecnologia.cadastrodeclientes:id/toolbar',
        @contato_deletado = 'br.com.dudstecnologia.cadastrodeclientes:id/imagemLista'
        @cadastro_realizado = 'android:id/message'
    end

    def acesso_app
       find_element(id: @nome_app).displayed?
    end

    def valida_registro_deletado
        find_element(id: contato_deletado).displayed?
    end

    def valida_cadastro_realizado
        find_element(id: cadastro_realizado).displayed?
    end
end
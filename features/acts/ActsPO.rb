require 'appium_console'
require 'appium_lib'
require 'httparty'
require 'rspec'

#classe para guardar os metodos de ações

class ActsPO

    def initialize
        @botao_opcoes = 'br.com.dudstecnologia.cadastrodeclientes:id/floating_action_menu',
        @cadastrar_novo = 'br.com.dudstecnologia.cadastrodeclientes:id/floating_novo',
        @exportar_dados = 'br.com.dudstecnologia.cadastrodeclientes:id/floating_exportar',
        @sobre_app = 'br.com.dudstecnologia.cadastrodeclientes:id/floating_sobre'
        @nome = 'br.com.dudstecnologia.cadastrodeclientes:id/editNome',
        @telefone1 = 'br.com.dudstecnologia.cadastrodeclientes:id/editTelefone1',
        @salvar = 'br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar',
        @perfeito = 'android:id/button1',
        @imagem_lista = 'br.com.dudstecnologia.cadastrodeclientes:id/imagemLista',
        @botao_excluir = 'br.com.dudstecnologia.cadastrodeclientes:id/btnExcluir',
        @confirma_excluir = 'android:id/button1'
    end


    def cadastra_novo_cliente 
        find_element(id: @botao_opcoes).click
        find_element(id:@cadastrar_novo).click
        find_element(id: @nome).send_key 'Lucas'
        find_element(id: @telefone1).send_key '1239529884'
        find_element(id: @salvar).click
    end

    def confirma_cadastro
        find_element(id: @perfeito).click
    end

    def seleciona_contato
        find_element(id: @imagem_lista).click
    end

    def deleta_cliente
        find_element(id: @botao_excluir).click
        find_element(id: @confirma_excluir).click
    end
end
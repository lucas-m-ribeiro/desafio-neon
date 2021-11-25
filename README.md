# Desafio neon

    Projeto realizado como atividade de analise tecnica para o processo seletivo da Neon Pagamentos
    
    
**Estrutura do projeto**

O projeto consiste na criação de cenários de testes em Gherkin de um aplicativo móvel de cadastro de clientes, e a criação de testes para métodos de uma API  de cadastro de empregados. Após a criação dos cenários de testes, foram realizados automação de 2 cenários de testes, com as seguintes tecnologias: 

    Ruby
    Appium
    Cucumber
    Httparty
    Rspec
    

 <p align="center">
  <img width="300px" height="500px" src="https://github.com/LukasRibeiro/desafio-neon/blob/desafio/imagens/estrutura%20projeto.PNG">
</p>

    
<p align="center">Figura 1: Estrutura final do projeto<p align="center">
    
    

A figura 1 apresenta a estrutura do projeto final, sendo que em cada diretório possuem as seguintes finalidades: 

- **app**: Contém o arquivo **.apk** do aplicativo utilizado para automação, e criação dos cenários de testes.

- **features**: Contém dentro dele os outros diretórios do projeto automatizado. Este diretório é o diretório principal criado pela ferramenta **cucumber**. Além dos outros diretórios do projeto, ele contem também os arquivos **.feature**, correspondentes aos arquivos dos cenários de testes criado em Gherkin. O arquivo de nome **mobile**, contem os cenários de testes do aplicativo, enquanto o arquivo de nome **Backend**, contem os cenários de testes criados para a API.

- **acts** Contém as classes que possuem métodos de **ação**, desenvolvidos em Ruby. A Classe **AtcsPO**, contem os métodos utilizados na automação do aplicativo, enquanto a classe **ActsCrud**, contem os métodos que são utilizados pela automação da API.

- **gets** Contém as classes que possuem métodos de **validação** desenvolvido em Ruby, referente apenas ao aplicativo móvel.

- **step_definitions** Contém os cenários de testes automatizados do aplicativo e da api. Os arquivos **CreateNewEmplyee** e **UpdateRegisterEmployee**, são referentes ao cenários de teste da API. Enquanto os arquivos **DeleteRegisterCustomer** e **RegisterNewCustomer** são referentes a automação dos cenários do aplicativo móvel.

- **support** Contém o arquivo de configuração **env.rb**

- **spec** Contém o arquivo de configuração **spec_helper.rb**

Os arquivos: **.rspec**, **appium**, **Gemfile** e **Gemfile.lock** também são arquivos de configuração do projeto gerados durante o desenvolvimento

# Executando projeto

Para executar o projeto, é necessário possuir a máquina configurada com android studio e o sdk do android configurado, appium server e o appium inspector, referentes a tecnologia necessária para realizar testes automatizados mobile. 

**Execução dos testes automatizados mobile**

Os cenários escolhidos para automação, possuem uma marcação própria da linguagem Gherkin, com a finalidade de ao executar o projeto executar apenas os cenários específicos com a marcação. Sendo assim para executar os testes automatizados mobile, será preciso acessar o diretório do projeto via terminal, e executar o seguinte comando: 

    cucumber -t @mobile

Com o comando executado os testes automatizados referentes ao aplicativo móvel serão iniciados.


**Execução dos testes automatizados API**

Para realizar a execução dos testes automatizados referente a API, será necessário realizar o mesmo procedimento feito para os testes mobile, acessando o diretório do projeto via terminal. Após acessar, basta executar o seguinte comando:

     cucumber -t @api
     
Com este comando executado, os testes automatizados referente a API serão iniciados.



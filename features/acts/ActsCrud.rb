require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'rspec'

#classe para guardar os metodos de ações da API

class ActsCrud

    include HTTParty
    base_uri 'http://dummy.restapiexample.com/api/v1'


    def create
      body = {
        :name => "Barry Allen",
        :salary => '123',
        :age => '23'
      }.to_json

      headers = {
        'Accept' => 'application/vnd.tasksmanager.v2',
        'Content-Type' => 'application/json'
      }

      self.class.post('/create', body: $body, headers: $headers) 

    end

    def read (id)
      self.class.get("/employee/#{ id }")
    end 

    def delete (id)
        self.class.delete("/delete/#{ id }")
    end

    def update(id)

        body = {
            :name =>'Hall Jordan',
            :salary => '456',
            :age => '25'
        }.to_json

        headers = {
           'Accept' => 'application/vnd.tasksmanager.v2',
           'Content-Type' => 'application/json'
         }

        self.class.put("/update/#{ id }", body: body, headers: headers)
    end
end
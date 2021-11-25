require 'cucumber'
require 'rspec'
require 'httparty'
require_relative "../acts/ActsCrud"


When('the user send request with id for update') do
    @update_usuario = ActsCrud.new
    $response = @update_usuario.create
    @id = JSON.parse($response.body)['id']
    puts $response.body
end

Then ('the register must be updated') do
    expect(@update_usuario.create.code).to eq (200)
end
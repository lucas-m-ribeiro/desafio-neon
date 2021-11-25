require 'cucumber'
require 'rspec'
require 'httparty'
require_relative "../acts/ActsCrud"


Given('the address api') do 
    @update_usuario = ActsCrud.new
end

When('the user send request with id for update') do
    $response = @update_usuario.create
    puts $response.body
    @id = JSON.parse($response.body)['id']
end

Then ('the register must be updated') do
    expect(@update_usuario.create.code).to eq (200)
end
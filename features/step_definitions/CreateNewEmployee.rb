require 'cucumber'
require 'rspec'
require 'httparty'
require_relative "../acts/ActsCrud"


Given('the address of api') do 
    @usuario = ActsCrud.new
end

When('the user send request with your information') do
    @usuario.create
end

Then ('the user must be registered') do
    expect(@usuario.create.code).to eq (200)
end
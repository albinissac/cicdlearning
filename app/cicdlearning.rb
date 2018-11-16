require 'sinatra'
require 'thin'
require 'json'
require_relative "./handler"

#set :bind, '0.0.0.0'
 
get '/v1.0.0' do 
  Handler.new.default.to_json
end
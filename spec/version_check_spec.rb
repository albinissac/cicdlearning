require 'json'
require 'rspec'
require 'rest-client'

describe 'cicdlearning: ' do
  context 'verifying version support: ' do 
    it 'says that it supports version 1.0.0', :integration => true do
      response = RestClient.get 'http://0.0.0.0:4567/'
      expect(JSON.parse(response)['service'])
        .to eq('cicdlearning')
    end
  end
end 
require 'mailjet/resource'

module Mailjet
  class Apikey
    include Mailjet::Resource
    self.resource_path = 'apikey'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

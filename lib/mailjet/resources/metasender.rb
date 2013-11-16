require 'mailjet/resource'

module Mailjet
  class Metasender
    include Mailjet::Resource
    self.resource_path = 'metasender'
    self.public_operations = [:get, :put, :post]
    
  end
end

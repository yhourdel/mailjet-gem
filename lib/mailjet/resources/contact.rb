require 'mailjet/resource'

module Mailjet
  class Contact
    include Mailjet::Resource
    self.resource_path = 'contact'
    self.public_operations = [:get, :put, :post]
    
  end
end

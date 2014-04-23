require 'mailjet/resource'

module Mailjet
  class Contactslist
    include Mailjet::Resource
    self.resource_path = 'contactslist'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

require 'mailjet/resource'

module Mailjet
  class Manycontacts
    include Mailjet::Resource
    self.resource_path = 'manycontacts'
    self.public_operations = [:get, :post]
    
  end
end

require 'mailjet/resource'

module Mailjet
  class Apikeyaccess
    include Mailjet::Resource
    self.resource_path = 'apikeyaccess'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

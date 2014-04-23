require 'mailjet/resource'

module Mailjet
  class Listrecipient
    include Mailjet::Resource
    self.resource_path = 'listrecipient'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

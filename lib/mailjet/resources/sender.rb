require 'mailjet/resource'

module Mailjet
  class Sender
    include Mailjet::Resource
    self.resource_path = 'sender'
    self.public_operations = [:get, :put, :post]
    
  end
end

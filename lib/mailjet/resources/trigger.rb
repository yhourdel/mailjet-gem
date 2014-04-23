require 'mailjet/resource'

module Mailjet
  class Trigger
    include Mailjet::Resource
    self.resource_path = 'trigger'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

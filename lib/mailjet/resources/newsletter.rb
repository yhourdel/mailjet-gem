require 'mailjet/resource'

module Mailjet
  class Newsletter
    include Mailjet::Resource
    self.resource_path = 'newsletter'
    self.public_operations = [:get, :put, :post]
    
  end
end

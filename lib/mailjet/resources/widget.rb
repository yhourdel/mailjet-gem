require 'mailjet/resource'

module Mailjet
  class Widget
    include Mailjet::Resource
    self.resource_path = 'widget'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

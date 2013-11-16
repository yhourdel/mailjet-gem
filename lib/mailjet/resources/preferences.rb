require 'mailjet/resource'

module Mailjet
  class Preferences
    include Mailjet::Resource
    self.resource_path = 'preferences'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

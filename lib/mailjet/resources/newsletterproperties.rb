require 'mailjet/resource'

module Mailjet
  class Newsletterproperties
    include Mailjet::Resource
    self.resource_path = 'newsletterproperties'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

require 'mailjet/resource'

module Mailjet
  class Newsletterblock
    include Mailjet::Resource
    self.resource_path = 'newsletterblock'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

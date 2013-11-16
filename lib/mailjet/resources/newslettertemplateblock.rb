require 'mailjet/resource'

module Mailjet
  class Newslettertemplateblock
    include Mailjet::Resource
    self.resource_path = 'newslettertemplateblock'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

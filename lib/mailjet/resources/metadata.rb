require 'mailjet/resource'

module Mailjet
  class Metadata
    include Mailjet::Resource
    self.resource_path = 'metadata'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

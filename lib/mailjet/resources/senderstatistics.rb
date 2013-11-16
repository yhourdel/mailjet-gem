require 'mailjet/resource'

module Mailjet
  class Senderstatistics
    include Mailjet::Resource
    self.resource_path = 'senderstatistics'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

require 'mailjet/resource'

module Mailjet
  class Clickstatistics
    include Mailjet::Resource
    self.resource_path = 'clickstatistics'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

require 'mailjet/resource'

module Mailjet
  class Graphstatistics
    include Mailjet::Resource
    self.resource_path = 'graphstatistics'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

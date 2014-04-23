require 'mailjet/resource'

module Mailjet
  class Messagesentstatistics
    include Mailjet::Resource
    self.resource_path = 'messagesentstatistics'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

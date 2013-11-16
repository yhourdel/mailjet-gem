require 'mailjet/resource'

module Mailjet
  class Messageinformation
    include Mailjet::Resource
    self.resource_path = 'messageinformation'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

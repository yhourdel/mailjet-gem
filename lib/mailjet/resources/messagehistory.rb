require 'mailjet/resource'

module Mailjet
  class Messagehistory
    include Mailjet::Resource
    self.resource_path = 'messagehistory'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

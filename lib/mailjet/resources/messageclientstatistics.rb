require 'mailjet/resource'

module Mailjet
  class Messageclientstatistics
    include Mailjet::Resource
    self.resource_path = 'messageclientstatistics'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

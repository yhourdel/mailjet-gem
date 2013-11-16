require 'mailjet/resource'

module Mailjet
  class Openstatistics
    include Mailjet::Resource
    self.resource_path = 'openstatistics'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

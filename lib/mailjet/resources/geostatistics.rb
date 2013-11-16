require 'mailjet/resource'

module Mailjet
  class Geostatistics
    include Mailjet::Resource
    self.resource_path = 'geostatistics'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

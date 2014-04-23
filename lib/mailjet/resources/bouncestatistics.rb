require 'mailjet/resource'

module Mailjet
  class Bouncestatistics
    include Mailjet::Resource
    self.resource_path = 'bouncestatistics'
    self.public_operations = [:get]
    
    self.read_only = true
    
  end
end

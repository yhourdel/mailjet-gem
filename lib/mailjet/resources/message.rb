require 'mailjet/resource'

module Mailjet
  class Message
    include Mailjet::Resource
    self.resource_path = 'message'
    self.public_operations = [:get]
    
  end
end

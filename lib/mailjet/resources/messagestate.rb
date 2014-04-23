require 'mailjet/resource'

module Mailjet
  class Messagestate
    include Mailjet::Resource
    self.resource_path = 'messagestate'
    self.public_operations = [:get]
    
  end
end

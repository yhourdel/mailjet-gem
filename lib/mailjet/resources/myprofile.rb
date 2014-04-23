require 'mailjet/resource'

module Mailjet
  class Myprofile
    include Mailjet::Resource
    self.resource_path = 'myprofile'
    self.public_operations = [:get, :put]
    
  end
end

require 'mailjet/resource'

module Mailjet
  class Newslettertemplatecategory
    include Mailjet::Resource
    self.resource_path = 'newslettertemplatecategory'
    self.public_operations = [:get]
    
  end
end

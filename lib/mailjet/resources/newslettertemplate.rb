require 'mailjet/resource'

module Mailjet
  class Newslettertemplate
    include Mailjet::Resource
    self.resource_path = 'newslettertemplate'
    self.public_operations = [:get, :post]
    
  end
end

require 'mailjet/resource'

module Mailjet
  class Campaign
    include Mailjet::Resource
    self.resource_path = 'campaign'
    self.public_operations = [:get]
    
  end
end

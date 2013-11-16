require 'mailjet/resource'

module Mailjet
  class Eventcallbackurl
    include Mailjet::Resource
    self.resource_path = 'eventcallbackurl'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

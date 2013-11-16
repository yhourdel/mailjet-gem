require 'mailjet/resource'

module Mailjet
  class Widgetcustomvalue
    include Mailjet::Resource
    self.resource_path = 'widgetcustomvalue'
    self.public_operations = [:get, :put, :post, :delete]
    
  end
end

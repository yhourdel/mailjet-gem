require 'mailjet/resource'

module Mailjet
  class Batchjob
    include Mailjet::Resource
    self.resource_path = 'batchjob'
    self.public_operations = [:get, :put, :post]
    
  end
end

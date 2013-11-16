require 'mailjet/resource'

module Mailjet
  class Profile
    include Mailjet::Resource
    self.resource_path = 'myprofile'
    self.public_operations = [:get, :post, :put, :delete]
  end
end

require 'mailjet/resource'

module Mailjet
  class ContactList
    include Mailjet::Resource
    self.resource_path = 'contactlist'
    self.public_operations = [:get, :post, :put, :delete]
  end
end

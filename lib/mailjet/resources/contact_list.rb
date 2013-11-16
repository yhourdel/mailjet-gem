require 'mailjet/resource'

module Mailjet
  class ContactList
    include Mailjet::Resource
    self.resource_path = 'contactlist'
  end
end

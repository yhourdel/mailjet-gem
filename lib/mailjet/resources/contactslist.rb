require 'mailjet/resource'

module Mailjet
  class Contactslist
    include Mailjet::Resource
    self.resource_path = 'contactslist'
  end
end

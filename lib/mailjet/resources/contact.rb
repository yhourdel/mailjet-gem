require 'mailjet/resource'

module Mailjet
  class Contact
    include Mailjet::Resource
    self.resource_path = 'contact'
  end
end

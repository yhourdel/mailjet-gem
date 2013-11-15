require 'mailjet/resource'

module Mailjet
  class Contact < Mailjet::Resource
    self.resource_path = 'contact'
  end
end

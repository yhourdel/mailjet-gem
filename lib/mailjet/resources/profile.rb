require 'mailjet/resource'

module Mailjet
  class Profile < Mailjet::Resource
    self.resource_name = 'myprofile'
  end
end

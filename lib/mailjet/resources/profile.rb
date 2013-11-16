require 'mailjet/resource'

module Mailjet
  class Profile
    include Mailjet::Resource
    self.resource_path = 'myprofile'
  end
end

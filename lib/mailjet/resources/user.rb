require 'mailjet/resource'

module Mailjet
  class User
    include Mailjet::Resource
    self.resource_path = 'user'
  end
end

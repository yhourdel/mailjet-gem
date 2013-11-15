require 'mailjet/resource'

module Mailjet
  class User < Mailjet::Resource
    self.resource_path = 'user'
  end
end

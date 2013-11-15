require 'mailjet/resource'

module Mailjet
  class Message < Mailjet::Resource
    self.resource_path = 'message'
  end
end

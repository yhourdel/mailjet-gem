require 'mailjet/resource'

module Mailjet
  class Message
    include Mailjet::Resource
    self.resource_path = 'message'
  end
end

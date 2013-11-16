require 'mailjet/resource'

module Mailjet
  class Sender
    include Mailjet::Resource
    self.resource_path = 'sender'
  end
end

require 'mailjet/resource'

module Mailjet
  class Sender < Mailjet::Resource
    self.resource_path = 'sender'
  end
end

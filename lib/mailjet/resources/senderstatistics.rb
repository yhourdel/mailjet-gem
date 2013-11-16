require 'mailjet/resource'

module Mailjet
  class Senderstatistics
    include Mailjet::Resource
    self.resource_path = 'senderstatistics'
  end
end

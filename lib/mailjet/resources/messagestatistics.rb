require 'mailjet/resource'

module Mailjet
  class Messagestatistics
    include Mailjet::Resource
    self.resource_path = 'messagestatistics'
  end
end

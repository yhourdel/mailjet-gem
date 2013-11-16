require 'mailjet/resource'

module Mailjet
  class Clickstatistics
    include Mailjet::Resource
    self.resource_path = 'clickstatistics'
  end
end

require 'mailjet/resource'

module Mailjet
  class Liststatistics
    include Mailjet::Resource
    self.resource_path = 'liststatistics'
  end
end

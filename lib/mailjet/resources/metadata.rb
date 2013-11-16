require 'mailjet/resource'

module Mailjet
  class Metadata
    include Mailjet::Resource
    self.resource_path = 'metadata'
  end
end

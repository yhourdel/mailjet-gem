require 'mailjet/resource'

module Mailjet
  class Contactstatistics
    include Mailjet::Resource
    self.resource_path = 'contactstatistics'
  end
end

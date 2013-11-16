require 'mailjet/resource'

module Mailjet
  class Domainstatistics
    include Mailjet::Resource
    self.resource_path = 'domainstatistics'
  end
end

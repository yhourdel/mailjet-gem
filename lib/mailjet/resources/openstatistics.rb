require 'mailjet/resource'

module Mailjet
  class Openstatistics
    include Mailjet::Resource
    self.resource_path = 'openstatistics'
  end
end

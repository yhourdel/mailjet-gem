require 'mailjet/resource'

module Mailjet
  class Geostatistics
    include Mailjet::Resource
    self.resource_path = 'geostatistics'
  end
end

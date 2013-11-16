require 'mailjet/resource'

module Mailjet
  class Graphstatistics
    include Mailjet::Resource
    self.resource_path = 'graphstatistics'
  end
end

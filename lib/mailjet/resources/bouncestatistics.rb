require 'mailjet/resource'

module Mailjet
  class Bouncestatistics
    include Mailjet::Resource
    self.resource_path = 'bouncestatistics'
  end
end

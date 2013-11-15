require 'mailjet/resource'

module Mailjet
  class Campaign < Mailjet::Resource
    self.resource_path = 'campaign'
  end
end

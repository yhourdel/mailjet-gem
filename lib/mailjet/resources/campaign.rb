require 'mailjet/resource'

module Mailjet
  class Campaign
    include Mailjet::Resource
    self.resource_path = 'campaign'
  end
end

require 'mailjet/resource'

module Mailjet
  class Newsletterproperties
    include Mailjet::Resource
    self.resource_path = 'newsletterproperties'
  end
end

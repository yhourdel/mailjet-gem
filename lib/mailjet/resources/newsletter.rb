require 'mailjet/resource'

module Mailjet
  class Newsletter
    include Mailjet::Resource
    self.resource_path = 'newsletter'
  end
end

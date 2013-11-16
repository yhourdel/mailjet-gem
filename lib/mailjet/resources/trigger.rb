require 'mailjet/resource'

module Mailjet
  class Trigger
    include Mailjet::Resource
    self.resource_path = 'trigger'
  end
end

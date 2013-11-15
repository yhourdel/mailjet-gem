require 'mailjet/resource'

module Mailjet
  class Newsletter < Mailjet::Resource
    self.resource_path = 'newsletter'
  end
end

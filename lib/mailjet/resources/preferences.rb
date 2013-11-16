require 'mailjet/resource'

module Mailjet
  class Preferences
    include Mailjet::Resource
    self.resource_path = 'preferences'
  end
end

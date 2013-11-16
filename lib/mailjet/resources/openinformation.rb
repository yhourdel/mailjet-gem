require 'mailjet/resource'

module Mailjet
  class Openinformation
    include Mailjet::Resource
    self.resource_path = 'openinformation'
  end
end

require 'mailjet/resource'

module Mailjet
  class Messageinformation
    include Mailjet::Resource
    self.resource_path = 'messageinformation'
  end
end

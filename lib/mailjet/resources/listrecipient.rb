require 'mailjet/resource'

module Mailjet
  class Listrecipient
    include Mailjet::Resource
    self.resource_path = 'listrecipient'
  end
end

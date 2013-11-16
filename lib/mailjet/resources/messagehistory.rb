require 'mailjet/resource'

module Mailjet
  class Messagehistory
    include Mailjet::Resource
    self.resource_path = 'messagehistory'
  end
end

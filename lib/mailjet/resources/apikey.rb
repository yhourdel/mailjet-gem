require 'mailjet/resource'

module Mailjet
  class Apikey < Mailjet::Resource
    self.resource_path = 'apikey'
  end
end

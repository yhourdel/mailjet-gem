require 'mailjet/resource'

module Mailjet
  class Apikey
    include Mailjet::Resource
    self.resource_path = 'apikey'
  end
end

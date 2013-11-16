require 'mailjet/resource'

module Mailjet
  class Apitoken
    include Mailjet::Resource
    self.resource_path = 'apitoken'
  end
end

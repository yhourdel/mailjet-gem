require 'mailjet/resource'

module Mailjet
  class Apikeyaccess
    include Mailjet::Resource
    self.resource_path = 'apikeyaccess'
  end
end

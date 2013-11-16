require 'mailjet/resource'

module Mailjet
  class Manycontacts
    include Mailjet::Resource
    self.resource_path = 'manycontacts'
  end
end

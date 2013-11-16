require 'mailjet/resource'

module Mailjet
  class Metasender
    include Mailjet::Resource
    self.resource_path = 'metasender'
  end
end

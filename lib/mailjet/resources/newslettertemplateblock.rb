require 'mailjet/resource'

module Mailjet
  class Newslettertemplateblock
    include Mailjet::Resource
    self.resource_path = 'newslettertemplateblock'
  end
end

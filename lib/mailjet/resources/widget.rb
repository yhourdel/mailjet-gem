require 'mailjet/resource'

module Mailjet
  class Widget
    include Mailjet::Resource
    self.resource_path = 'widget'
  end
end

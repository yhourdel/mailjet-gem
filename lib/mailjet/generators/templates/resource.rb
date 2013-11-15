require 'mailjet/resource'

module Mailjet
  class <%= resource_name %> < Mailjet::Resource
    self.resource_path = '<%= resource_path %>'
  end
end

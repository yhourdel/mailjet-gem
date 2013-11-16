require 'mailjet/resource'

module Mailjet
  class <%= resource_name %>
    include Mailjet::Resource
    self.resource_path = '<%= resource_path %>'
  end
end

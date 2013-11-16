require 'mailjet/resource'

module Mailjet
  class <%= resource_name %>
    include Mailjet::Resource
    self.resource_path = '<%= resource_path %>'
    self.public_operations = [<%= public_operation_string %>]
    <% if read_only %>
    self.read_only = true
    <% end %>
  end
end

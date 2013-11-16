require 'mailjet/resource'

module Mailjet
  class Eventcallbackurl
    include Mailjet::Resource
    self.resource_path = 'eventcallbackurl'
  end
end

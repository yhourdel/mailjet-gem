require 'mailjet/resource'

module Mailjet
  class Newsletterblock
    include Mailjet::Resource
    self.resource_path = 'newsletterblock'
  end
end

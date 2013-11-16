require 'mailjet/resource'

module Mailjet
  class Useragentstatistics
    include Mailjet::Resource
    self.resource_path = 'useragentstatistics'
  end
end

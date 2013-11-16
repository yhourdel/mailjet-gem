require 'mailjet/resource'

module Mailjet
  class Batchjob
    include Mailjet::Resource
    self.resource_path = 'batchjob'
  end
end

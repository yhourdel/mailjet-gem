require 'active_support'
require 'ostruct'
require 'mailjet/core_extensions/ostruct'
# require 'mailjet/api_error'
require 'mailjet/configuration'
# require 'mailjet/contact'
# require 'mailjet/list'
# require 'mailjet/campaign'
# require 'mailjet/template_category'
# require 'mailjet/template_model'
# require 'mailjet/reporting'
# require 'mailjet/click'
# require 'mailjet/email'

require 'mailjet/resource'
require 'mailjet/resources/contact_list'
require 'mailjet/resources/profile'


module Mailjet
  def self.configure
    yield Mailjet::Configuration
  end

  def self.config
    Mailjet::Configuration
  end
end

if defined?(ActionMailer)
  require 'action_mailer/version'
  require 'mailjet/mailer' if ActionMailer::Base.respond_to?(:add_delivery_method)
end

require 'mailjet/rack/endpoint'

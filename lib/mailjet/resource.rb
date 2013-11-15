require 'rest_client'
require 'mailjet/resource'
require 'active_support/hash_with_indifferent_access'
require 'active_support/core_ext/class'
require 'active_support/core_ext/string'

module Mailjet
  class Resource

    class << self
      def inherited(subclass)
        subclass.cattr_accessor :resource_name
      end

      def connection
        @@connection = RestClient::Resource.new("#{Mailjet.config.end_point}/#{resource_name}", Mailjet.config.api_key, Mailjet.config.secret_key)
      end

      def first
        all.first
      end

      def all(params = {})
        response = ActiveSupport::JSON.decode(connection.get(params: params))
        attribute_array = response["Data"]
        attribute_array.map do |attributes|
          attributes = underscore_keys(attributes)
          attributes[:count] = response["Total"] if params[:count] == true
          self.new(attributes).tap{ |resource| resource.persisted = true }
        end
      end

      def find(id)
        response = ActiveSupport::JSON.decode(connection[id].get)
        attribute_array = response["Data"]
        attributes = attribute_array.first
        attributes = underscore_keys(attributes)
        self.new(attributes).tap{ |resource| resource.persisted = true }
      rescue RestClient::ResourceNotFound
        nil
      end

      def create(attributes = {})
        self.new(attributes).tap do |resource|
          resource.persisted = true if resource.save
        end
      end

      def camelcase_keys(hash)
        hash.inject({}) do |_hash, (key, value)|
          key_to_s = key.to_s
          _hash[key_to_s.camelcase] = value
          _hash
        end
      end

      def underscore_keys(hash)
        hash.inject({}) do |_hash, (key, value)|
          key_to_s = key.to_s
          _hash[key_to_s.underscore] = value
          _hash
        end
      end
    end

    attr_accessor :attributes, :persisted

    def initialize(_attributes)
      @persisted = _attributes.delete(:persisted) || false
      @attributes = ActiveSupport::HashWithIndifferentAccess.new(_attributes)
    end

    def persisted?
      @persisted
    end

    def save
      payload = self.class.camelcase_keys(attributes)

      puts payload.inspect

      if persisted?
        response = ActiveSupport::JSON.decode(connection[id].put(payload))
      else
        response = ActiveSupport::JSON.decode(connection.post(payload))
      end
      puts "RESPONSE: #{response.inspect}"
      self.attributes = self.class.underscore_keys(response['Data'].first)
    rescue RestClient::NotModified
      puts "WARNING: NotModified"
      return false
    end

    def attributes=(attribute_hash = {})
      self.attributes.merge!(attribute_hash)
    end

    def update_attributes(attribute_hash = {})
      self.attributes = attribute_hash
      save
    end

    def destroy
      connection[id].delete
    end

    private

    def connection
      self.class.connection
    end

    def method_missing(method_symbol, *arguments) #:nodoc:
      method_name = method_symbol.to_s

      if method_name =~ /(=|\?)$/
        case $1
        when "="
          attributes[$`] = arguments.first
        when "?"
          attributes[$`]
        end
      else
        return attributes[method_name] if attributes.include?(method_name)
        # not set right now but we know about it
        # return nil if known_attributes.include?(method_name)
        super
      end
    end
  end
end

require 'rest_client'
require 'active_support/core_ext/module/delegation'

module Mailjet
  class Connection

    attr_accessor :adapter, :public_operations, :read_only
    alias :read_only? :read_only

    delegate :[], :url, to: :adapter

    def initialize(end_point, api_key, secret_key, options = {})
      adapter_class = options[:adapter_class] || RestClient::Resource

      self.public_operations = options[:public_operations] || []
      self.read_only = options[:read_only]
      self.adapter = adapter_class.new(end_point, api_key, secret_key)
    end

    def get(additional_headers = {}, &block)
      handle_api_call(:get, additional_headers, &block)
    end

    def post(payload, additional_headers = {}, &block)
      handle_api_call(:post, additional_headers, payload, &block)
    end

    def put(payload, additional_headers = {}, &block)
      handle_api_call(:put, additional_headers, payload, &block)
    end

    def delete(additional_headers = {}, &block)
      handle_api_call(:delete, additional_headers, &block)
    end

    private

    def handle_api_call(method, additional_headers = {}, payload = {}, &block)
      raise Mailjet::MethodNotAllowed unless method_allowed(method)

      if [:get, :delete].include?(method)
        @adapter.send(method, additional_headers, &block)
      else
        @adapter.send(method, payload, additional_headers, &block)
      end
    rescue RestClient::Exception => e
      handle_exeception(e, additional_headers, payload)
    end

    def method_allowed(method)
      public_operations.include?(method) && (method == :get || !read_only?)
    end

    def handle_exeception(e, additional_headers, payload = {})
      params = additional_headers[:params].merge(payload)

      raise Mailjet::ApiError.new(e.http_code, e.http_body, @adapter, @adapter.url, params)
    end

  end

  class MethodNotAllowed < StandardError

  end
end

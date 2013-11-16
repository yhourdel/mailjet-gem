require 'rest_client'
require 'active_support/core_ext/module/delegation'

module Mailjet
  class Connection

    attr_accessor :adapter

    delegate :[], to: :adapter

    def initialize(end_point, api_key, secret_key, adapter_class = RestClient::Resource)
      self.adapter = adapter_class.new(end_point, api_key, secret_key)
    end

    def get(additional_headers = {}, &block)
       @adapter.get(additional_headers, &block)
    rescue RestClient::Exception => e
      handle_exeception(e, additional_headers)
    end

    def post(payload, additional_headers = {}, &block)
       @adapter.post(payload, additional_headers, &block)
    rescue RestClient::Exception => e
      handle_exeception(e, additional_headers, payload)
    end

    def put(payload, additional_headers = {}, &block)
       @adapter.put(payload, additional_headers, &block)
    rescue RestClient::Exception => e
      handle_exeception(e, additional_headers, payload)
    end

    def delete(additional_headers = {}, &block)
       @adapter.delete(additional_headers, &block)
    rescue RestClient::Exception => e
      handle_exeception(e, additional_headers)
    end

    private

    def handle_exeception(e, additional_headers, payload = {})
      params = additional_headers[:params].merge(payload)

      raise Mailjet::ApiError.new(e.http_code, e.http_body, @adapter, @adapter.url, params)
    end

  end
end

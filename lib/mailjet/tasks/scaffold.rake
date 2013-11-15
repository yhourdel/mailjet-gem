require 'yaml'
require 'rest_client'
require 'mailjet'

namespace :mailjet do
  desc "Build resources from metadata"
  task :scaffold do

    test_account = YAML::load(File.new(File.expand_path("../../../../config.yml", __FILE__)))['mailjet']

    Mailjet.configure do |config|
      config.api_key = test_account['api_key']
      config.secret_key = test_account['secret_key']
      config.end_point = test_account['end_point']
      config.default_from = test_account['default_from']
    end

    connection = RestClient::Resource.new("http://betapi.mailjet.com/apitest/REST/metadata", Mailjet.config.api_key, Mailjet.config.secret_key)
    metadata = ActiveSupport::JSON.decode(connection.get)
    resources = metadata['Data']

    resources.each do |resource|
      generator = Mailjet::Generators::ResourceGenerator.new(resource['Name'])
      generator.create_resource_file
      puts "#{resource['Name']} created"
    end
  end
end

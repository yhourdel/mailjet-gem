require 'minitest/autorun'
require 'minitest/matchers'
require 'minitest/pride'
require 'mocha/setup'
require 'mailjet'
require 'mailjet/resource'
begin; require 'turn/autorun'; rescue LoadError; end

require File.expand_path './support/vcr_setup.rb', __dir__

test_account = YAML::load(File.new(File.expand_path("../../config.yml", __FILE__)))['mailjet']

MiniTest::Spec.before do
  Mailjet.configure do |config|
    config.api_key = test_account['api_key']
    config.secret_key = test_account['secret_key']
    config.end_point = test_account['end_point']
    config.default_from = test_account['default_from']
  end
end

# MiniTest::Spec.after do
#   Object.send(:remove_const, 'Mailjet')
#   Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each {|f| load f}
# end

Turn.config.format = :outline





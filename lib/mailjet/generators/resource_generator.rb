require 'erb'

module Mailjet
  module Generators
    class ResourceGenerator

      attr_accessor :resource_path

      def initialize(_resource_path)
        self.resource_path = _resource_path
      end

      def renderer
        @renderer ||= ERB.new(File.read(File.expand_path("../templates/resource.rb", __FILE__)))
      end

      def create_resource_file
        File.open(File.expand_path("../../resources/#{resource_filename}.rb", __FILE__), 'w') {|f| f.write(renderer.result(binding)) }
      end

      def resource_name
        resource_path.camelize
      end

      def resource_filename
        resource_name.underscore
      end

    end
  end
end

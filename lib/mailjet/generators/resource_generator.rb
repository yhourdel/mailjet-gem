require 'erb'

module Mailjet
  module Generators
    class ResourceGenerator

      attr_accessor :resource_path

      def initialize(_resource_path)
        self.resource_path = _resource_path
      end

      def create_resource_file
        File.open(resource_full_path, 'w') {|f| f.write(file_content) }
      end

      def resource_name
        resource_path.camelize
      end

      private

      def renderer
        @renderer ||= ERB.new(File.read(template_path))
      end

      def file_content
        renderer.result(binding)
      end

      def resource_name
        resource_path.camelize
      end

      def resource_filename
        resource_name.underscore
      end

      def resource_full_path
        File.expand_path("../../resources/#{resource_filename}.rb", __FILE__)
      end

      def template_path
        File.expand_path("../templates/resource.rb", __FILE__)
      end

    end
  end
end

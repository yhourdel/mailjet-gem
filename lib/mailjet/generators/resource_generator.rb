require 'erb'

module Mailjet
  module Generators
    class ResourceGenerator

      attr_accessor :resource_path, :public_operations, :description, :read_only

      def initialize(resource)
        self.resource_path = resource['Name']
        self.public_operations = parse_public_operations(resource['PublicOperations'].to_s)
        self.description = parse_public_operations(resource['Description'])
        self.read_only = resource['IsReadOnly']
      end

      def create_resource_file
        File.open(resource_full_path, 'w') {|f| f.write(file_content) }
      end

      def resource_name
        resource_path.camelize
      end

      def public_operation_string
        public_operations.map{ |op| ":#{op}" }.join(', ')
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

      def parse_public_operations(public_operations_string)
        public_operations_string.split(', ').map(&:underscore).map(&:to_sym)
      end

    end
  end
end

module RubyLint
  module DefinitionBuilder
    class Base
      include Helper::ConstantPaths

      attr_reader :definitions, :node

      def initialize(node, definitions)
        @node        = node
        @definitions = definitions
      end
    end # Base
  end # DefinitionBuilder
end # RubyLint

module RubyLint
  module DefinitionBuilder
    ##
    # Base definition builder that provides common methods for individual
    # builder classes.
    #
    # @!attribute [r] node
    #  @return [RubyLint::AST::Node]
    # @!attribute [r] definitions
    #  @return [RubyLint::Definition::RubyObject]
    #
    class Base
      include Helper::ConstantPaths

      attr_reader :definitions, :node, :options

      ##
      # @param [RubyLint::AST::Node] node
      # @param [RubyLint::Definition::RubyObject] definitions
      # @param [Hash] options
      #
      def initialize(node, definitions, options = {})
        @node        = node
        @definitions = definitions
        @options     = options

        after_initialize if respond_to?(:after_initialize)
      end

      protected

      ##
      # Returns the name of a constant node as a String.
      #
      # @param [RubyLint::AST::Node] node
      # @return [String]
      #
      def constant_name(node)
        return node.children[1].to_s
      end
    end # Base
  end # DefinitionBuilder
end # RubyLint

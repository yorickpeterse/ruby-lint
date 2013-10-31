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
      attr_reader :definitions, :node, :options

      # Ensures compatibility with code that relies on either one of these
      # methods. They are the same for definition builders anyway.
      alias_method :current_scope, :definitions

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

module RubyLint
  module DefinitionBuilder
    class RubyMethod < Base
      ##
      # Called after a new instance has been created.
      #
      def after_initialize
        @options[:type] ||= :instance_method
      end

      ##
      # Builds the definition for the method definition.
      #
      # @see #new_definition
      # @return [RubyLint::Definition::RubyMethod]
      #
      def build
        return new_definition([scope])
      end

      ##
      # Returns the scope to define the method in.
      #
      # @return [RubyLint::Definition::RubyObject]
      #
      def scope
        scope = definitions

        if has_receiver? and options[:receiver]
          scope = options[:receiver]
        end

        return scope
      end

      private

      ##
      # @return [String]
      #
      def method_name
        return node.children[name_index].to_s
      end

      ##
      # @param [Array] parents The parent definitions.
      # @return [RubyLint::Definition::RubyObject]
      #
      def new_definition(parents)
        type = options[:type]

        if has_receiver?
          type = :method if options[:receiver].class?
        end

        return Definition::RubyMethod.new(
          :name          => method_name,
          :parents       => parents,
          :type          => type,
          :instance_type => :instance
        )
      end

      ##
      # @return [TrueClass|FalseClass]
      #
      def has_receiver?
        return node.type == :defs
      end

      ##
      # @return [Numeric]
      #
      def name_index
        return has_receiver? ? 1 : 0
      end
    end # RubyMethod
  end # DefinitionBuilder
end # RubyLint

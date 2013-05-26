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
      # @see #new_node
      # @return [RubyLint::Definition::RubyMethod]
      #
      def build
        return new_node([scope])
      end

      ##
      # Returns the scope to define the method in.
      #
      # @return [RubyLint::Definition::RubyObject]
      #
      def scope
        scope = definitions

        if has_receiver?
          found = lookup_receiver_definition(receiver_node)
          scope = found if found
        end

        return scope
      end

      private

      ##
      # Looks up the receiver used for the method definition.
      #
      # @param [RubyLint::AST::Node] node
      # @return [RubyLint::Definition::RubyObject]
      #
      def lookup_receiver_definition(node)
        # NOTE: not so sure if it's save to assume there's always a valid
        # RubyObject returned here.
        if node.constant?
          return resolve_constant_name(node)
        elsif node.self?
          return definitions.lookup(:keyword, 'self')
        else
          return definitions.lookup(node.type, node.children[0]).value
        end
      end

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
      def new_node(parents)
        type = options[:type]

        if has_receiver?
          receiver = lookup_receiver_definition(receiver_node)
          type     = :method if receiver.class?
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

      def receiver_node
        return node.children[0]
      end
    end # RubyMethod
  end # DefinitionBuilder
end # RubyLint

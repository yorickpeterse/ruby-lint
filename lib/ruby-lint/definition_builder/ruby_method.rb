module RubyLint
  module DefinitionBuilder
    class RubyMethod < Base
      ##
      # Builds the definition for the method definition.
      #
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
          receiver = node.children[0]
          found    = lookup_receiver_definition(receiver)
          scope    = found if found
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
        if node.constant?
          return resolve_constant_name(node)
        else
          # NOTE: not so sure if it's save to assume there's always a valid
          # RubyObject returned here.
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
        return Definition::RubyMethod.new(
          :name    => method_name,
          :parents => parents
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

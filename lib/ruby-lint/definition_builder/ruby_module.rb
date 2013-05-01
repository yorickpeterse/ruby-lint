module RubyLint
  module DefinitionBuilder
    class RubyModule < Base
      ##
      # Creates a new module definition.
      #
      # @see #new_node
      #
      def build
        return new_node([definitions])
      end

      ##
      # Determines the scope to define the module in.
      #
      # @return [RubyLint::Definition::RubyObject]
      #
      def scope
        scope       = definitions
        name_prefix = node.children[0].children[0]

        # name_prefix contains the constant path leading up to the name. For
        # example, if the name is `A::B::C` this node would contain `A::B`.
        if name_prefix
          found = resolve_constant_name(name_prefix)
          scope = found if found
        end

        return scope
      end

      private

      ##
      # Tries to resolve the definition for the node's name.
      #
      # @param [RubyLint::AST::Node] node
      # @return [RubyLint::Definition::RubyObject]
      #
      def resolve_constant_name(node)
        if node.children[0]
          found = resolve_constant_path(node.children)
        else
          found = definitions.lookup(node.type, constant_name(node))
        end

        return found
      end

      ##
      # Returns the name of the module.
      #
      # @see #constant_name
      #
      def module_name
        return constant_name(node.children[0])
      end

      ##
      # Returns the name of a constant node as a String.
      #
      # @param [RubyLint::AST::Node] node
      # @return [String]
      #
      def constant_name(node)
        return node.children[1].to_s
      end

      ##
      # Creates a new RubyObject definition with the specified parent
      # definitions.
      #
      # @param [Array] parents
      # @return [RubyLint::Definition::RubyObject]
      #
      def new_node(parents)
        return Definition::RubyObject.new(
          :name             => module_name,
          :parents          => parents,
          :reference_amount => 1
        )
      end
    end # RubyModule
  end # DefinitionBuilder
end # RubyLint

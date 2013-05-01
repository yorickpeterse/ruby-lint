module RubyLint
  module DefinitionBuilder
    class RubySclass < Base
      ##
      # Determines the scope to use for the body of the sclass block.
      #
      # @return [RubyLint::Definition::RubyObject]
      #
      def scope
        if update_self?
          scope = definitions.lookup(:keyword, 'self')
        else
          scope = resolve_constant_name(node.children[0])
        end

        return scope
      end

      private

      ##
      # Returns `true` if the sclass block was created in the form of
      # `class << self`.
      #
      # @return [TrueClass|FalseClass]
      #
      def update_self?
        return node.children[0].type == :self
      end
    end # RubySclass
  end # DefinitionBuilder
end # RubyLint

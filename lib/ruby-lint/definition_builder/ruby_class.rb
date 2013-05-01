module RubyLint
  module DefinitionBuilder
    class RubyClass < RubyModule
      ##
      # Builds the definition for a Ruby class.
      #
      # @see RubyLint::DefinitionBuilder::RubyModule#build
      #
      def build
        parent      = RubyLint.global_constant('Object')
        parent_node = node.children[1]

        if parent_node
          found  = resolve_constant_name(parent_node)
          parent = found if found
        end

        return new_node([parent, definitions])
      end
    end # RubyClass
  end # DefinitionBuilder
end # RubyLint

module RubyLint
  module Analyze
    ##
    # Adds warnings whenever a variable defined in a block shadows another
    # variable defined in the outer scope.
    #
    class ShadowingVariables < Iterator
      include Helper::CurrentScope

      ##
      # @param [RubyLint::Node] node
      #
      def on_block(node)
        node.children[0].each do |param|
          name = param.children[0]

          if current_scope.has_definition?(param.type, name)
            warning("shadowing outer local variable \"#{name}\"", param)
          end
        end
      end
    end # ShadowingVariables
  end # Analyze
end # RubyLint

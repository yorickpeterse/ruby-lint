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
        node.each_argument do |param|
          if current_scope.has_definition?(param.type, param.name)
            warning("shadowing outer local variable #{param.name}", param)
          end
        end
      end
    end # ShadowingVariables
  end # Analyze
end # RubyLint

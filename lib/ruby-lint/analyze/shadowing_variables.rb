module RubyLint
  module Analyze
    ##
    # The ShadowingVariables class checks for the use of variables in a block
    # that shadow outer variables. "Shadowing" means that a variable is used
    # with the same name as a variable in the surrounding scope. A simple
    # example:
    #
    #     number = 10
    #
    #     [10, 20, 30].each do |number|
    #       puts number # `number` is being shadowed
    #     end
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

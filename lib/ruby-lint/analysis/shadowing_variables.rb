module RubyLint
  module Analysis
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
    class ShadowingVariables < Base
      ##
      # @param [RubyLint::AST::Node] node
      #
      def on_block(node)
        @outer_scope = current_scope
        @in_block    = true

        super
      end

      ##
      # @param [RubyLint::AST::Node] node
      #
      def after_block(node)
        @in_block    = false
        @outer_scope = nil

        super
      end

      ##
      # @param [RubyLint::AST::Node] node
      #
      def on_arg(node)
        if @in_block \
        and @outer_scope.has_definition?(:lvar, node.name)
          warning("shadowing outer local variable #{node.name}", node)
        end
      end
    end # ShadowingVariables
  end # Analysis
end # RubyLint

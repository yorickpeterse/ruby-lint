module RubyLint
  module Analysis
    ##
    # The {RubyLint::Analysis::ConfusingVariables} class checks for local
    # variable assignments where the variable name is the same as an existing
    # method name. Often these kind of assignments can lead to unexpected
    # behaviour.
    #
    class ConfusingVariables < Base
      ##
      # @param [RubyLint::AST::Node] node
      #
      def on_lvasgn(node)
        name   = node.name
        method = current_scope.lookup(current_scope.method_call_type, name)

        if method and method != current_scope
          warning(
            'variable assignment using the same name as an existing method',
            node
          )
        end
      end
    end # ConfusingVariables
  end # Analysis
end # RubyLint

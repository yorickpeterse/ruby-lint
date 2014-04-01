module RubyLint
  ##
  # Mixin that provides helper methods for handling method calls.
  #
  module MethodEvaluation
    ##
    # Returns the receiver of the given `(send)` node. This method also handles
    # `(block)` nodes that wrap around `(send)` nodes.
    #
    # @param [RubyLint::AST::Node] node
    # @return [RubyLint::AST::Node]
    #
    def unpack_receiver(node)
      return node && node.block? ? node.children[0] : node
    end
  end # MethodEvaluation
end # RubyLint

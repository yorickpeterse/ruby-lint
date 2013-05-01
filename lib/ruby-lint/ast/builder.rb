module RubyLint
  module AST
    ##
    # Custom AST builder class used to provide some extra additions/changes to
    # the AST such as the use of a custom node class.
    #
    class Builder < ::Parser::Builders::Default
      ##
      # @param [Symbol] type
      # @param [Array] children
      # @param [Parser::Source::Map] source_map
      # @return [RubyLint::AST::Node]
      #
      def n(type, children, source_map)
        return Node.new(type, children, :source_map => source_map)
      end
    end # Builder
  end # AST
end # RubyLint

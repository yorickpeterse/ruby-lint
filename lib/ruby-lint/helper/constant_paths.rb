module RubyLint
  module Helper
    ##
    # The ConstantPaths helper module can be used to easily iterate over the
    # segments of a constant path and perform lookups on each segment.
    #
    module ConstantPaths
      ##
      # Iterates over each segment of the constant path and yields the supplied
      # block.
      #
      # @example
      #  path = s(:constant_path, s(:constant, 'A'), s(:constant, 'B')
      #
      #  iterate_constant_path(path) do |name, segment, definition|
      #    puts name
      #  end
      #
      # @param [RubyLint::Node] node The constant path to iterate over.
      #
      # @yieldparam [String] name The name of the current segment.
      # @yieldparam [RubyLint::Node] node The raw AST node of the current
      #  segment.
      # @yieldparam [RubyLint::Definition::RubyObject] definition The
      #  definition object of the current segment.
      #
      def iterate_constant_path(node)
        definitions = current_scope

        node.children.each do |segment|
          name       = segment.children[0]
          definition = definitions.lookup(:constant, name)

          yield name, segment, definition

          definition ? definitions = definition : break
        end
      end
    end # ConstantPaths
  end # Helper
end # RubyLint

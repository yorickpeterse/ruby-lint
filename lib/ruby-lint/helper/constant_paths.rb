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
      #  path = s(:const_path, s(:const, 'A'), s(:const, 'B')
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
          definition = definitions.lookup(:const, name)

          yield name, segment, definition

          definition ? definitions = definition : break
        end
      end

      ##
      # Returns a definition list to use for the last segment in the constant
      # path. If one of the segments is invalid `nil` is returned instead.
      #
      # @param [Array] path An array of nodes or definitions that make up the
      #  constant path.
      # @return [RubyLint::Definition::RubyObject|NilClass]
      #
      def resolve_constant_path(path)
        current = definitions

        path.each do |segment|
          type = :const
          name = segment

          if segment.is_a?(AST::Node)
            type = segment.type
            name = segment.children[1]
          end

          found = current.lookup(type, name.to_s)

          if found
            current = found
          else
            return
          end
        end

        return current
      end
    end # ConstantPaths
  end # Helper
end # RubyLint

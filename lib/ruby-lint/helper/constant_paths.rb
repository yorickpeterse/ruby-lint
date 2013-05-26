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
      # Looks up a definition for a given constant path. If no constant could
      # be found `nil` is returned.
      #
      # @param [RubyLint::AST::Node] node
      # @return [RubyLint::Definition::RubyObject|NilClass]
      #
      def resolve_constant_path(node)
        current = definitions

        constant_segments(node).each do |segment|
          found = current.lookup(:const, segment)

          found ? current = found : return
        end

        return current
      end

      private

      ##
      # Returns an Array containing the segments of a constant path.
      #
      # @param [RubyLint::AST::Node] node
      # @return [Array<String>]
      #
      def constant_segments(node)
        segments = []

        if node.children[0]
          segments.concat(constant_segments(node.children[0]))
        end

        segments << node.children[1].to_s

        return segments
      end
    end # ConstantPaths
  end # Helper
end # RubyLint

module RubyLint
  module Helper
    ##
    # The ConstantPaths helper module can be used to easily iterate over the
    # segments of a constant path and perform lookups on each segment.
    #
    module ConstantPaths
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

module RubyLint
  module Analyze
    ##
    # Analysation class that validations the amount of specified and required
    # arguments of a method call.
    #
    class ArgumentAmount < Iterator
      include Helper::Methods

      ##
      # @param [RubyLint::Node] node
      #
      def on_method(node)
        return unless method_defined?(node)

        existing      = lookup_method(node)
        specified     = node.gather_arguments(:argument).length
        minimum       = existing.length_of(:arguments)
        maximum       = minimum
        expected_text = minimum.to_s

        if existing.optional_arguments and !existing.optional_arguments.empty?
          maximum       += existing.length_of(:optional_arguments)
          expected_text += "..#{maximum}"
        end

        unless specified >= minimum && specified <= maximum
          error(
            "wrong number of arguments (expected #{expected_text} but " \
              "got #{specified})",
            node
          )
        end
      end
    end # ArgumentAmount
  end # Analyze
end # RubyLint

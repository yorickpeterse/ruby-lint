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

        definition    = lookup_method(node)
        specified     = node.gather_arguments.length
        minimum       = definition.length_of(:arguments)
        optional      = definition.length_of(:optional_arguments)
        maximum       = minimum + optional
        rest          = !definition.rest_argument.nil?
        expected_text = expected_text(minimum, maximum, optional)

        unless correct_argument_amount(minimum, maximum, specified, rest)
          error(
            "wrong number of arguments (expected #{expected_text} but " \
              "got #{specified})",
            node
          )
        end
      end

      private

      ##
      # @param [Numeric] minimum
      # @param [Numeric] maximum
      # @param [Numeric] specified
      # @param [TrueClass|FalseClass] rest
      # @return [TrueClass|FalseClass]
      #
      def correct_argument_amount(minimum, maximum, specified, rest = false)
        valid = false

        if rest
          valid = specified >= minimum
        else
          valid = specified >= minimum && specified <= maximum
        end

        return valid
      end

      ##
      # Creates a string that indicates the amount of parameters that can be
      # specified for a method.
      #
      # @param [Numeric] minimum
      # @param [Numeric] maximum
      # @param [Numeric] optional
      # @return [String]
      #
      def expected_text(minimum, maximum, optional)
        if optional > 0
          return "#{minimum}..#{maximum}"
        else
          return minimum.to_s
        end
      end
    end # ArgumentAmount
  end # Analyze
end # RubyLint

module RubyLint
  module Analysis
    ##
    # The ArgumentAmount class is an analysis class that verifies the amount of
    # arguments given with each method call and adds errors whenever an invalid
    # amount was given.
    #
    class ArgumentAmount < Base
      ##
      # Hash that contains method names that should be used for analysis
      # instead of the ones specified in the keys.
      #
      # @return [Hash]
      #
      MAP_METHODS = {
        'new' => [:instance_method, 'initialize']
      }

      ##
      # @param [RubyLint::Node] node
      #
      def on_send(node)
        receiver, name, *args = *node

        name  = name.to_s
        scope = current_scope

        if receiver and vm.associations.key?(receiver)
          scope = vm.associations[receiver]
        end

        method = scope.lookup(scope.method_call_type, name)

        return unless method

        if MAP_METHODS[method.name]
          method = scope.lookup(*MAP_METHODS[method.name])
        end

        given    = args ? args.length : 0
        min, max = argument_range(method)

        unless correct_argument_amount(min, max, given)
          text = argument_text(method, given)

          error(
            "wrong number of arguments (expected #{text} but got #{given})",
            node
          )
        end
      end

      private

      ##
      # @param [Numeric] min
      # @param [Numeric] max
      # @param [Numeric] given
      # @return [TrueClass|FalseClass]
      #
      def correct_argument_amount(min, max, given)
        return given >= min && given <= max
      end

      ##
      # Returns a String that indicates the amount of required arguments.
      #
      # @param [RubyLint::Definition::RubyMethod] method
      # @param [Numeric] given
      # @return [String]
      #
      def argument_text(method, given)
        min = method.amount(:arg)
        opt = method.amount(:optarg)

        return opt > 0 ? "#{min}..#{min + opt}" : min.to_s
      end

      ##
      # Returns the minimum and maximum amount of arguments for a method call.
      #
      # @param [RubyLint::Definition::RubyMethod] method
      # @return [Array]
      #
      def argument_range(method)
        min = method.amount(:arg)

        if method.amount(:restarg) > 0
          max = Float::INFINITY
        else
          max = min + method.amount(:optarg) + method.amount(:restarg)
        end

        return min, max
      end
    end # ArgumentAmount
  end # Analysis
end # RubyLint

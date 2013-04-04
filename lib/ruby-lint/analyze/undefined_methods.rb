module RubyLint
  module Analyze
    ##
    # Analysis class that checks for the use of undefined methods.
    #
    class UndefinedMethods < Iterator
      include Helper::Methods

      ##
      # @param [RubyLint::Node] node
      #
      def on_method(node)
        valid = method_defined?(node)
        error = "undefined method #{node.name}"

        # Methods called on block variables should be ignored since these
        # variables don't carry any class information with them.
        if !valid and node.receiver
          receiver = method_receiver(node.receiver)
          valid    = receiver && receiver.ignore

          if receiver.variable? and receiver.value
            receiver = receiver.value
          end

          if receiver
            error = receiver_error(node.name, receiver)
          end
        end

        error(error, node) unless valid
      end

      private

      ##
      # Creates an error message for a method call on a receiver.
      #
      # @param [String] name
      # @param [RubyLint::Definition::RubyObject] receiver
      # @return [String]
      #
      def receiver_error(name, receiver)
        error         = "undefined method #{name} on #{receiver.name}"
        receiver_name = receiver.ruby_class || receiver.name

        if receiver.instance?
          error = "undefined method #{name} on an instance " \
            "of #{receiver_name}"
        end

        return error
      end
    end # UndefinedMethods
  end # Analyze
end # RubyLint

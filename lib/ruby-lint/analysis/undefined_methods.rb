module RubyLint
  module Analysis
    ##
    # The UndefinedMethods class checks for the use of undefined methods/local
    # variables and adds errors whenever needed. Based on the receiver of a
    # method call the corresponding error message differs to make it easier to
    # understand what is going on.
    #
    # A simple example:
    #
    #     foobar        # => undefined method foobar
    #     'test'.foobar # => undefined method foobar on an instance of String
    #
    class UndefinedMethods < Base
      ##
      # @param [RubyLint::AST::Node] node
      #
      def on_send(node)
        receiver, name, _  = *node

        name  = name.to_s
        scope = current_scope

        # Abort if the receiver doesn't exist since it will be handled by other
        # analysis classes.
        if receiver and !vm.associations.key?(receiver)
          return
        end

        if receiver and vm.associations.key?(receiver)
          scope = vm.associations[receiver]

          # TODO: this should be handled in a more generic and especially in a
          # more nicer way.
          return if scope.parents.empty?
        end

        unless has_definition?(scope, name)
          message = error_for(name, receiver, scope)

          error(message, node)
        end
      end

      private

      ##
      # @param [RubyLint::Definition::RubyObject] scope
      # @param [String] name
      #
      def has_definition?(scope, name)
        exists = scope.has_definition?(scope.method_call_type, name)

        # Due to the way `parser` wraps block nodes (`(block (send) ...)`
        # opposed to `(send ... (block))`) we'll try to find the method in the
        # previous scope if we can't find it in the current block scope.
        if !exists and scope.block?
          prev   = previous_scope
          exists = prev.has_definition?(prev.method_call_type, name)
        end

        return exists
      end

      ##
      # Determines what error message to use for a method call.
      #
      # @param [String] name The name of the method.
      # @param [RubyLint::AST::Node] receiver The receiver node, if any.
      # @param [RubyLint::Definition::RubyObject] scope The scope the method
      #  was called on.
      # @return [String]
      #
      def error_for(name, receiver, scope)
        return receiver ? receiver_error(name, scope) : method_error(name)
      end

      ##
      # @param [String] name
      # @return [String]
      #
      def method_error(name)
        return "undefined method #{name}"
      end

      ##
      # Returns a String containing the error message to use when calling an
      # undefined method on a receiver.
      #
      # @param [String] name
      # @param [RubyLint::Definition::RubyObject] scope
      # @return [String]
      #
      def receiver_error(name, scope)
        klass = scope.ruby_class ? scope.ruby_class : scope.name

        if scope.instance?
          error = "undefined method #{name} on an instance of #{klass}"
        else
          error = "undefined method #{name} on #{scope.name}"
        end

        return error
      end
    end # UndefinedMethods
  end # Analysis
end # RubyLint

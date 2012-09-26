module Rlint
  module Analyze
    ##
    # {Rlint::Analyze::Definitions} is a callback class that is used to keep
    # track of defined classes, variables and the likes.
    #
    class Definitions < Rlint::Callback
      ##
      # @see Rlint::Callback#initialize
      #
      def initialize(*args)
        super

        @global_scope = Scope.new
        @scopes       = [Scope.new(@global_scope)]
      end

      ##
      # Called when a value is assigned to a variable.
      #
      # @param [Rlint::Token::AssignmentToken] token
      #
      def on_assignment(token)
        if token.type == :global_variable
          scope = @global_scope
        else
          scope = @scopes[-1]
        end

        scope.add(token.type, token.name, token.value)
      end

      ##
      # Called when an instance variable is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_instance_variable(token)
        unless @scopes[-1].lookup(:instance_variable, token.name)
          error(
            "undefined instance variable #{token.name}",
            token.line,
            token.column
          )
        end
      end

      ##
      # Called when a class variable is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_class_variable(token)
        unless @scopes[-1].lookup(:class_variable, token.name)
          error(
            "undefined class variable #{token.name}",
            token.line,
            token.column
          )
        end
      end

      ##
      # Called when a global variable is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_global_variable(token)
        unless @scopes[-1].lookup(:global_variable, token.name)
          error(
            "undefined global variable #{token.name}",
            token.line,
            token.column
          )
        end
      end

      ##
      # Called when a constant is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_constant(token)
        unless @scopes[-1].lookup(:constant, token.name)
          error("undefined constant #{token.name}", token.line, token.column)
        end
      end

      ##
      # Called when a method or undefined local variable is found (the latter
      # is treated as a method by the parser).
      #
      # @param [Rlint::Token::MethodToken] token
      #
      def on_method(token)
        method_exists = @scopes[-1].lookup(:method, token.name)
        var_exists    = @scopes[-1].lookup(:local_variable, token.name)

        # TODO: this clearly won't work for other methods that have been
        # included into the global scope.
        kernel_method = Rlint::SYMBOLS['Kernel'].key?(token.name)

        if !method_exists and !var_exists and !kernel_method
          error(
            "undefined local variable or method #{token.name}",
            token.line,
            token.column
          )
        end
      end
    end # Definitions
  end # Analyze
end # Rlint

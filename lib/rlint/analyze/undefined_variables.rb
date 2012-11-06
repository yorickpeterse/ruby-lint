module Rlint
  module Analyze
    ##
    # {Rlint::Analyze::UndefinedVariables} is used to add errors for the use of
    # undefined variables.
    #
    class UndefinedVariables < Rlint::Callback
      include Helper::DefinitionResolver

      [
        'instance_variable',
        'class_variable',
        'global_variable',
        'constant'
      ].each do |name|
        readable = name.gsub('_', ' ')

        define_method('on_' + name) do |token|
          unless variable_defined?(token.type, token)
            error(
              "undefined #{readable} #{token.name}",
              token.line,
              token.column
            )
          end
        end
      end

      ##
      # Called when a variable assignment is found. Used to validate constant
      # paths before assigning data to them.
      #
      # @param [Rlint::Token::AssignmentToken] token
      #
      def on_assignment(token)
        on_constant_path(token) if token.name.is_a?(Array)
      end

      ##
      # Called when a constant path is found.
      #
      # @param [Rlint::Token::VariableToken] token
      #
      def on_constant_path(token)
        current  = scope
        segments = []

        token.name.each do |segment|
          segments << segment
          found    = current.lookup(:constant, segment)

          if found and (found.token.line and found.token.line < token.line)
            current = found
          else
            error(
              "undefined constant #{segments.join('::')}",
              token.line,
              token.column
            )

            return
          end
        end
      end

      ##
      # Called when a method call is found.
      #
      # @param [Rlint::Token::MethodToken] token
      #
      def on_method(token)
        kernel_method = false
        kernel        = scope.lookup(:constant, 'Kernel')

        if kernel.lookup(:method, token.name) \
        or kernel.lookup(:instance_method, token.name)
          kernel_method = true
        end

        if !token.receiver \
        and !kernel_method \
        and !variable_defined?(:instance_method, token)
          error(
            "undefined local variable or method #{token.name}",
            token.line,
            token.column
          )
        end
      end

      ##
      # Checks if the given variable exists or not.
      #
      # @param [#to_sym] type The type of variable to look up.
      # @param [Rlint::Token::VariableToken] token The token containing details
      #  about the variable.
      # @return [TrueClass|FalseClass]
      #
      def variable_defined?(type, token)
        found    = scope.lookup(type, token.name)
        has_line = found.respond_to?(:token) \
          && !found.token.nil? \
          && !found.token.line.nil?

        if !found or (has_line and found.token.line > token.line)
          return false
        else
          return true
        end
      end
    end # UndefinedVariables
  end # Analyze
end # Rlint

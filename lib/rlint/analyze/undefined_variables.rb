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
          unless definition_exists?(token.type, token)
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

          if found and found.token.line < token.line
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
        and !definition_exists?(:instance_method, token)
          error(
            "undefined local variable or method #{token.name}",
            token.line,
            token.column
          )
        end
      end
    end # UndefinedVariables
  end # Analyze
end # Rlint

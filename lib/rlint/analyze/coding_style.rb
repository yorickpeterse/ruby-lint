module Rlint
  module Analyze
    ##
    # Callback class that checks the coding style of a file.
    #
    class CodingStyle < Rlint::Callback
      MAXIMUM_NAME_LENGTH = 30

      METHOD_PARAMETER_TYPES = [:block, :more, :optional, :rest, :value]

      def on_instance_variable(token)
        validate_name(token)
      end

      def on_class_variable(token)
        validate_name(token)

        info(
          'the use of class variables is discouraged',
          token.line,
          token.column
        )
      end

      def on_constant(token)
        validate_name_length(token)
      end

      def on_global_variable(token)
        validate_name(token)
      end

      def on_local_variable(token)
        validate_name(token)
      end

      def on_assignment(token)
        validate_name(token)

        if token.type == :class_variable
          info(
            'the use of class variables is discouraged',
            token.line,
            token.column
          )
        end
      end

      def on_method_definition(token)
        validate_name(token)
      end

      def on_if(token)
        validate_parenthesis(token)
      end

      def on_elsif(token)
        validate_parenthesis(token)
      end

      def on_while(token)
        validate_parenthesis(token)
      end

      def on_case(token)
        validate_parenthesis(token)
      end

      def on_when(token)
        validate_parenthesis(token)
      end

      def on_until(token)
        validate_parenthesis(token)
      end

      def on_unless(token)
        validate_parenthesis(token)
      end

      private

      def validate_name(token)
        if !token.respond_to?(:name) or !token.name
          return
        end

        if token.name =~ /[a-z]+[A-Z]+/
          info(
            'the use of camelCase for names is discouraged',
            token.line,
            token.column
          )
        end

        validate_name_length(token)
      end

      def validate_name_length(token)
        if !token.respond_to?(:name) or !token.name
          return
        end

        if token.name.length > MAXIMUM_NAME_LENGTH
          info(
            "method and variable names should not be longer than " \
              "#{MAXIMUM_NAME_LENGTH} characters",
            token.line,
            token.column
          )
        end
      end

      def validate_parenthesis(token)
        if token.code =~ /#{token.type}\s*\(/
          info(
            'the use of parenthesis for statements is discouraged',
            token.line,
            token.column
          )
        end
      end
    end # CodingStyle < Rlint::Callback
  end # Analyze
end # Rlint

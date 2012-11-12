module Rlint
  module Analyze
    ##
    # {Rlint::Analyze::MethodValidation} is used to validate method calls.
    # Errors are added for calling undefined methods, calling methods with
    # invalid parameters and so on.
    #
    class MethodValidation < Rlint::Callback
      include Helper::DefinitionResolver

      ##
      # A short description of this class.
      #
      # @return [String]
      #
      DESCRIPTION = 'Validates method calls and the specified parameters.'

      ##
      # Hash containing the various Ruby classes that are used to represent
      # various types.
      #
      # @return [Hash]
      #
      TYPE_CLASSES = {
        :string      => 'String',
        :integer     => 'Fixnum', # Fixnum and Bignum share the same methods.
        :float       => 'Float',
        :symbol      => 'Symbol',
        :array       => 'Array',
        :hash        => 'Hash',
        :brace_block => 'Proc',
        :lambda      => 'Proc',
        :regexp      => 'Regexp',
        :range       => 'Range'
      }

      ##
      # Called when a method call is found.
      #
      # @param [Rlint::Token::MethodToken] token
      #
      def on_method(token)
        # Method called on a receiver (e.g. `String.new`).
        if token.receiver
          receiver_name  = token.receiver.name
          receiver_scope = scope
          receiver_type  = token.receiver.type
          method_type    = :instance_method

          if receiver_name.is_a?(Array)
            return unless valid_constant_path?(token.receiver)

            receiver_scope = resolve_definition(receiver_name)
          end

          # Method calls on variables such as `name.upcase`.
          if token.receiver.is_a?(Token::VariableToken) \
          and receiver_type != :constant \
          and receiver_type != :constant_path
            value = receiver_scope.lookup(receiver_type, receiver_name)

            if !value.nil? and !value.token.value.nil?
              value         = value.token.value
              receiver_type = TYPE_CLASSES[value.type]
            end

            # Extract the class from a method call.
            if value.respond_to?(:receiver)
              while value.respond_to?(:receiver)
                value = value.receiver
              end

              receiver_type = value.name
            end

          # Methods called directly on a type such as `'name'.upcase`.
          elsif TYPE_CLASSES[receiver_type]
            receiver_type = TYPE_CLASSES[receiver_type]

          # Everything else.
          else
            method_type   = :method
            receiver_type = receiver_name.is_a?(Array) \
              ? receiver_name[-1] \
              : receiver_name
          end

          # Retrieve the constant to check for the existence of the method.
          found = receiver_scope.lookup(:constant, receiver_type)

          if found and !definition_exists?(method_type, token, found)
            if method_type == :instance_method
              error = "undefined instance method #{token.name}"
            else
              error = "undefined class method #{token.name}"
            end

            error(error, token.line, token.column)
          end
        end
      end
    end # MethodValidation
  end # Analyze
end # Rlint

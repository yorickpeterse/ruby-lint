module RubyLint
  module Helper
    module Scoping
      ##
      # Checks if the specified token's name is a valid constant path.
      #
      # @param  [RubyLint::Token::VariableToken] token The token to validate.
      # @return [TrueClass|FalseClass]
      #
      def valid_constant_path?(token)
        current = scope

        token.name.each do |segment|
          found = current.lookup(:constant, segment)

          if found and token.line > found.token.line
            current = found
          else
            return false
          end
        end

        return true
      end

      ##
      # Retrieves the class for the method receiver along with the method call
      # type. The method type is set in the first index, the definition in the
      # second one.
      #
      # @param  [RubyLint::Token::Token] token
      # @return [Array|NilClass]
      #
      def resolve_method_receiver(token)
        receiver_name  = token.name
        receiver_scope = scope
        receiver_type  = token.type
        method_type    = :instance_method

        if receiver_name.is_a?(Array)
          return unless valid_constant_path?(token)

          receiver_scope = resolve_definition(receiver_name)
        end

        if receiver_name == 'self' and @namespace
          receiver_type = @namespace[-1]

        # Method calls on variables such as `name.upcase`.
        elsif token.is_a?(Token::VariableToken) \
        and receiver_type != :constant \
        and receiver_type != :constant_path
          value = receiver_scope.lookup(receiver_type, receiver_name)

          if !value.nil? and !value.token.value.nil?
            value         = value.token.value
            receiver_type = TYPE_CLASSES[value.type]
          end

          if value.respond_to?(:receiver)
            while value.respond_to?(:receiver) and value.receiver
              value = value.receiver
            end

            receiver_type = value.name
          end

        # Methods called directly on a type such as `'name'.upcase`.
        elsif TYPE_CLASSES[receiver_type]
          receiver_type = TYPE_CLASSES[receiver_type]

        else
          method_type   = :method
          receiver_type = receiver_name.is_a?(Array) \
            ? receiver_name[-1] \
            : receiver_name
        end

        return [method_type, receiver_scope.lookup(:constant, receiver_type)]
      end
    end # Scoping
  end # Helper
end # RubyLint

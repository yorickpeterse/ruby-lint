module RubyLint
  module Analyze
    ##
    # {RubyLint::Analyze::MethodValidation} is used to validate method calls.
    # Errors are added for calling undefined methods, calling methods with
    # invalid parameters and so on.
    #
    class MethodValidation < RubyLint::Callback
      include Helper::DefinitionResolver

      ##
      # A short description of this class.
      #
      # @return [String]
      #
      DESCRIPTION = 'Validates method calls and the specified parameters.'

      ##
      # Called when a method call is found.
      #
      # @param [RubyLint::Token::MethodToken] token
      #
      def on_method(token)
        if token.receiver
          method_type, definition = resolve_method_receiver(token.receiver)

          if definition \
          and method_type \
          and !definition_exists?(method_type, token, definition)
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
end # RubyLint

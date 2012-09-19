module Rlint
  module Analyze
    ##
    # {Rlint::Analyze::CodingStyle} checks if a block of code matches a given
    # set of coding standards. While none of the problems found by this class
    # are considered harmful they are usually frowned upon as they do not
    # follow the unofficial but generally accepted Ruby coding standards.
    #
    # ## Standards References
    #
    # The following was used to determine the standards this class should
    # assume to be correct:
    #
    # * https://github.com/styleguide/ruby
    # * https://github.com/bbatsov/ruby-style-guide
    # * My own opinion
    #
    # ## Checks
    #
    # This class checks for the following:
    #
    # * The length of method and variable names, should be less than the value
    #   set in {Rlint::Analyze::CodingStyle::MAXIMUM\_NAME\_LENGTH}.
    # * The use of class variables (it's relatively rare that you actually need
    #   those).
    # * The use of parenthesis around various statements: these are not needed
    #   in Ruby.
    # * The use of camelCase for method and variable names instead of
    #   `snake_case`, the latter is what Ruby code should use.
    #
    class CodingStyle < Rlint::Callback
      ##
      # The maximum length for method and variable names.
      #
      # @return [Fixnum]
      #
      MAXIMUM_NAME_LENGTH = 30

      ##
      # Called when an instance variable is found.
      #
      # The following checks are run for instance variables:
      #
      # * Whether or not instance variables are `snake_cased` instead of
      #   camelCased.
      # * Whether or not the length of an instance variable is smaller than the
      #   value defined in {Rlint::Analyze::CodingStyle::MAXIMUM\_NAME\_LENGTH}.
      #
      # @param [Rlint::Token::VariableToken] token The token containing details
      #  about the variable.
      #
      def on_instance_variable(token)
        validate_name(token)
      end

      ##
      # Called when a class variable is found.
      #
      # This method will check for the same things as
      # {Rlint::Analyze::CodingStyle#on_instance_variable} along with adding an
      # info message about class variables being discouraged.
      #
      # @see Rlint::Analyze::CodingStyle#on_instance_variable
      #
      def on_class_variable(token)
        validate_name(token)

        info(
          'the use of class variables is discouraged',
          token.line,
          token.column
        )
      end

      ##
      # Called when a constant is found.
      #
      # @see Rlint::Analyze::CodingStyle#on_instance_variable
      #
      def on_constant(token)
        validate_name_length(token)
      end

      ##
      # Called when a global variable is found.
      #
      # @see Rlint::Analyze::CodingStyle#on_instance_variable
      #
      def on_global_variable(token)
        validate_name(token)
      end

      ##
      # Called when an instance variable is found.
      #
      # @see Rlint::Analyze::CodingStyle#on_instance_variable
      #
      def on_local_variable(token)
        validate_name(token)
      end

      ##
      # Called when a value is assigned.
      #
      # This method checks for the name of the used variable (similar to
      # instance variables) as well as adding a warning when an instance
      # variable is assigned.
      #
      # @see Rlint::Analyze::CodingStyle#on_instance_variable
      # @see Rlint::Analyze::CodingStyle#on_class_variable
      #
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

      ##
      # Called when a method is defined.
      #
      # @see Rlint::Analyze::CodingStyle#on_instance_variable
      #
      def on_method_definition(token)
        validate_name(token)
      end

      ##
      # Called when an if statement is found.
      #
      # This method checks to see if there are any parenthesis around the
      # statement and adds an info message if this is the case.
      #
      # @param [Rlint::Token::StatementToken] token The token containing
      #  details about the if statement.
      #
      def on_if(token)
        validate_parenthesis(token)
      end

      ##
      # Called when an elsif statement is found.
      #
      # @see Rlint::Analyze::CodingStyle#on_if
      #
      def on_elsif(token)
        validate_parenthesis(token)
      end

      ##
      # Called when a while statement is found.
      #
      # @see Rlint::Analyze::CodingStyle#on_if
      #
      def on_while(token)
        validate_parenthesis(token)
      end

      ##
      # Called when a case statement is found.
      #
      # @see Rlint::Analyze::CodingStyle#on_if
      #
      def on_case(token)
        validate_parenthesis(token)
      end

      ##
      # Called when a when statement is found.
      #
      # @see Rlint::Analyze::CodingStyle#on_if
      #
      def on_when(token)
        validate_parenthesis(token)
      end

      ##
      # Called when an until statement is found.
      #
      # @see Rlint::Analyze::CodingStyle#on_if
      #
      def on_until(token)
        validate_parenthesis(token)
      end

      ##
      # Called when an unless statement is found.
      #
      # @see Rlint::Analyze::CodingStyle#on_if
      #
      def on_unless(token)
        validate_parenthesis(token)
      end

      private

      ##
      # Validates the name of the specified token. This method will check for
      # the use of camelCase as well as checking for the length of the name.
      #
      # @param [Rlint::Token::Token] token The token to validate.
      #
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

      ##
      # Checks if the name of the given token is too long or not. The maximum
      # length of names is set in
      # {Rlint::Analyze::CodingStyle::MAXIMUM\_NAME\_LENGTH}.
      #
      # @param [Rlint::Token::Token] token The token to validate.
      #
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

      ##
      # Checks if there are any parenthesis wrapped around a statement.
      #
      # @param [Rlint::Token::Token] token The token to validate.
      #
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

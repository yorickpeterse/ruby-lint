module Rlint
  class Parser < Ripper::SexpBuilderPP
    ##
    # Array containing all the event names of which the methods should simply
    # returned the passed argument.
    #
    # @since 2012-08-24
    #
    RETURN_ARG_EVENTS = [:program, :var_field, :args_add_block]

    # Return an Rlint::Token::Token instance for each scanner event instead of
    # an array with multiple indexes.
    SCANNER_EVENTS.each do |event|
      define_method("on_#{event}") do |token|
        return Token::Token.new(
          :type   => event,
          :value  => token,
          :line   => lineno,
          :column => column
        )
      end
    end

    RETURN_ARG_EVENTS.each do |event|
      define_method("on_#{event}") do |*args|
        return args[0]
      end
    end

    ##
    # Called when a string literal was found.
    #
    # @since  2012-08-20
    # @param  [Array] token Array containing details about the string.
    # @return [Rlint::Token::Token]
    #
    def on_string_literal(token)
      return token[1]
    end

    ##
    # Called when an array is found.
    #
    # @since  2012-08-22
    # @param  [Array] values The values of the array.
    # @return [Rlint::Token::Token]
    #
    def on_array(values)
      return Token::Token.new(
        :type   => :array,
        :value  => values.map { |v| v.is_a?(Array) ? v[0] : v },
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when a reference to a particular array index is found.
    #
    # @since  2012-08-24
    # @param  [Rlint::Token::Token] array The array that was referenced.
    # @param  [Rlint::Token::Token] index The index that was referenced.
    # @return [Rlint::Token::Token]
    #
    def on_aref(array, index)
      array.key = index

      return array
    end

    ##
    # Called when a value is assigned to a variable.
    #
    # @since  2012-08-23
    # @param  [Rlint::Token::Token] variable The variable that is assigned.
    # @param  [Rlint::Token::Token] value The value to assign.
    # @return [Rlint::Token::VariableToken]
    #
    def on_assign(variable, value)
      return Token::VariableToken.new(
        :action => :assign,
        :line   => variable.line,
        :column => variable.column,
        :name   => variable.value,
        :type   => variable.type,
        :value  => value
      )
    end

    ##
    # Called when a variable is referenced.
    #
    # @since  2012-08-23
    # @param  [Rlint::Token::Token] variable The variable that was referenced.
    # @return [Rlint::Token::VariableToken]
    #
    def on_var_ref(variable)
      return Token::VariableToken.new(
        :action => :reference,
        :line   => variable.line,
        :column => variable.column,
        :name   => variable.value,
        :type   => variable.type
      )
    end
  end # Parser
end # Rlint

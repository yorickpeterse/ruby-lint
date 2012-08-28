module Rlint
  class Parser < Ripper::SexpBuilderPP
    ##
    # Array containing all the event names of which the methods should simply
    # returned the passed argument.
    #
    RETURN_FIRST_ARG_EVENTS = [
      :program,
      :var_field,
      :args_add_block,
      :assoclist_from_args,
      :symbol_literal,
      :begin
    ]

    ##
    # Array of events of which the methods should simply return the passed
    # arguments.
    #
    RETURN_ARG_EVENTS = [:mrhs_new_from_args]

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
      define_method("on_#{event}") do |arg|
        return arg
      end
    end

    RETURN_FIRST_ARG_EVENTS.each do |event|
      define_method("on_#{event}") do |*args|
        return args[0]
      end
    end

    ##
    # Called when a string literal was found.
    #
    # @param  [Array] token Array containing details about the string.
    # @return [Rlint::Token::Token]
    #
    def on_string_literal(token)
      return token[1]
    end

    ##
    # Called when a symbol is found.
    #
    # @param  [Rlint::Token::Token] token The symbol token.
    # @return [Rlint::Token::Token]
    #
    def on_symbol(token)
      token.type = :symbol

      return token
    end

    ##
    # Called when a symbol using quotes was found.
    #
    # @see Rlint::Parser#on_symbol
    #
    def on_dyna_symbol(token)
      return on_symbol(token[0])
    end

    ##
    # Called when an array is found.
    #
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
    # @param  [Rlint::Token::Token] array The array that was referenced.
    # @param  [Rlint::Token::Token] index The index that was referenced.
    # @return [Rlint::Token::Token]
    #
    def on_aref(array, index)
      array.key = index

      return array
    end

    ##
    # Called when a Hash is found.
    #
    # @param  [Array] pairs An array of key/value pairs of the hash.
    # @return [Rlint::Token::Token]
    #
    def on_hash(pairs)
      # column() is set to the column number of the very end of the hash.
      col = pairs[0].column rescue column

      return Token::Token.new(
        :type   => :hash,
        :value  => pairs,
        :line   => lineno,
        :column => col
      )
    end

    ##
    # Called when a new key/value pair of a Hash is found.
    #
    # @param  [Rlint::Token::Token] key The key of the pair.
    # @param  [Rlint::Token::Token] value The value of the pair.
    # @return [Rlint::Token::Token]
    #
    def on_assoc_new(key, value)
      key.name  = key.value
      key.value = value

      return key
    end

    ##
    # Called when a Range is found.
    #
    # @param  [Rlint::Token::Token] start The start value of the range.
    # @param  [Rlint::Token::Token] stop The end value of the range.
    # @return [Rlint::Token::Token]
    #
    def on_dot2(start, stop)
      return Token::Token.new(
        :type   => :range,
        :line   => start.line,
        :column => start.line,
        :value  => [start, stop]
      )
    end

    ##
    # Called when a value is assigned to a variable.
    #
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
    # Called when a (binary) operator operation is performed.
    #
    # @param  [Rlint::Token::Token] left The left hand side of the operator.
    # @param  [Symbol] op The operator that was used.
    # @param  [Rlint::Token::Token] right The right hand side of the operator.
    # @return [Rlint::Token::Token]
    #
    def on_binary(left, op, right)
      return Token::Token.new(
        :type   => :binary,
        :value  => [left, op, right],
        :line   => left.line,
        :column => left.column
      )
    end

    ##
    # Called when a return statement is found.
    #
    # @param  [Array] values The return values of the statement.
    # @return [Rlint::Token::StatementToken]
    #
    def on_return(values)
      # 7 is the length of the string "return ".
      col = (values[0].column rescue column) - 7

      return Token::StatementToken.new(
        :name   => :return,
        :line   => lineno,
        :column => col,
        :value  => values
      )
    end

    ##
    # Called when a while loop is found.
    #
    # @param  [Rlint::Token::Token] statement The statement to evaluate.
    # @param  [Rlint::Token::Token] value The body of the while loop.
    # @return [Rlint::Token::StatementToken]
    #
    def on_while(statement, value)
      col = (statement.column rescue column) - 6

      return Token::StatementToken.new(
        :name      => :while,
        :statement => statement,
        :value     => value,
        :line      => statement.line,
        :column    => col
      )
    end

    ##
    # Called when a for loop is found.
    #
    # @param  [Array] variables Array of variables to create for each iteration.
    # @param  [Rlint::Token::Token] enumerable The enumerable to iterate.
    # @param  [Array] value The body of the for loop.
    # @return [Rlint::Token::StatementToken]
    #
    def on_for(variables, enumerable, value)
      return Token::StatementToken.new(
        :name      => :for,
        :statement => [variables, enumerable],
        :value     => value,
        :column    => column,
        :line      => lineno
      )
    end

    ##
    # Called when an if statement is found.
    #
    # @param  [Rlint::Token::Token] statement The if statement to evaluate.
    # @param  [Array] value Array containing the tokens of the code that will
    #  be executed if the if statement evaluates to true.
    # @param  [Array] rest Array containing the tokens for the elsif and else
    #  statements (if any).
    # @return [Rlint::Token::IfToken]
    #
    def on_if(statement, value, rest)
      else_statement   = nil
      elsif_statements = []

      if rest and rest.respond_to?(:each)
        rest.each do |token|
          if token.name == :elsif
            elsif_statements << token
          else
            else_statement = token
          end
        end
      end

      return Token::IfToken.new(
        :statement => statement,
        :value     => value,
        :line      => statement.line,
        :column    => statement.column,
        :else      => else_statement,
        :elsif     => elsif_statements.reverse
      )
    end

    ##
    # Called when an else statement is found.
    #
    # @param  [Array] value The value of the statement.
    # @return [Rlint::Token::StatementToken]
    #
    def on_else(value)
      return Token::StatementToken.new(
        :name   => :else,
        :value  => value,
        :column => column,
        :line   => lineno
      )
    end

    ##
    # Called when an elsif statement is found.
    #
    # @param [Rlint::Token::Token] statement The statement to evaluate.
    # @param [Array] value The value of the elsif statement.
    # @param [Array|Rlint::Token::Token] list A list of else and elsif
    #  statements.
    # @return [Array]
    #
    def on_elsif(statement, value, list)
      token = Token::StatementToken.new(
        :name      => :elsif,
        :statement => statement,
        :value     => value,
        :line      => statement.line,
        :column    => statement.column
      )

      unless list.is_a?(Array)
        list = [list]
      end

      list << token
    end

    ##
    # Called when a collection of begin, rescue, ensure and else statements are
    # found.
    #
    #
    def on_bodystmt(value, rescues, elses, ensures)
      return Token::BeginRescueToken.new(
        :name   => :begin,
        :value  => value,
        :rescue => (rescues.reverse || []).select { |t| !t.nil? },
        :ensure => ensures,
        :else   => elses,
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when a rescue statement is found.
    #
    # @param [Array] exceptions An array of exceptions to catch.
    # @param [Rlint::Token::Token] variable The variable in which to store
    #  the exception details.
    # @param  [Array] value The value of the rescue statement.
    # @param  [Array|Rlint::Token::Token] list A set of all the rescue tokens.
    # @return [Rlint::Token::StatementToken]
    #
    def on_rescue(exceptions, variable, value, list)
      token = Token::StatementToken.new(
        :name      => :rescue,
        :statement => [exceptions, variable],
        :line      => lineno,
        :column    => column,
        :value     => value
      )

      unless list.is_a?(Array)
        list = [list]
      end

      list << token
    end

    ##
    # Called when an ensure statement is found.
    #
    # @param  [Array] value The value of the statement.
    # @return [Rlint::Token::StatementToken]
    #
    def on_ensure(value)
      return Token::StatementToken.new(
        :name   => :ensure,
        :value  => value,
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when a variable is referenced.
    #
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

module Rlint
  ##
  #
  # @since 2012-07-29
  #
  class Parser < Ripper::SexpBuilderPP
    ##
    # Creates a new instance of the parser class and stores the lines of the
    # code block as an array.
    #
    # @since 2012-07-29
    # @see   Ripper::SexpBuilderPP#initialize
    #
    def initialize(code, file = '(ripper)', line = 1)
      @lines      = code.lines.to_a
      @parameters = nil

      super
    end

    ##
    # Called when the program starts.
    #
    # @since  2012-07-29
    # @param  [Array] program Array containing the body of a block of code.
    # @return [Array]
    #
    def on_program(program)
      return program
    end

    ##
    # Called when the body of a method or class is found.
    #
    # @since  2012-07-29
    # @param  [Array] args Array containing the method arguments.
    # @return [Array]
    #
    def on_bodystmt(*args)
      return args[0]
    end

    ##
    # Called when a set of arguments are added to a method call.
    #
    # @since  2012-07-29
    # @param  [Array] args Array of arguments passed to the method.
    # @return [Array]
    #
    def on_args_add_block(*args)
      return args[0]
    end

    ##
    # Called when a set of method arguments are defined using a parenthesis.
    #
    # Instead of returning the tokens this method stores them in the
    # `@parameters` instance variable. This variable is used to properly assign
    # the parameters when calling methods using parenthesis.
    #
    # @since  2012-07-29
    # @param  [Array] args Array containing the details of the arguments.
    # @return [NilClass]
    #
    def on_arg_paren(args)
      @parameters = args

      return nil
    end

    ##
    # Called when a set of arguments are added to a method call.
    #
    # @since 2012-07-29
    # @see   Rlint::Parser#on_args_add_block
    #
    def on_method_add_arg(*args)
      return args[0]
    end

    ##
    # Called for a set of method parameters.
    #
    # @since  2012-07-29
    # @param  [Array] args Array of arguments passed to this method.
    # @return [Array]
    #
    def on_params(*args)
      retval = []

      args.each do |arg|
        next unless arg.is_a?(Array)

        arg = arg[0]

        if arg.length == 3
          name  = arg[1]
          value = nil
          line  = arg[2][0]
          col   = arg[2][1]
        else
          name  = arg[0][1]
          value = arg[1]
          line  = arg[0][2][0]
          col   = arg[0][2][1]
        end

        retval << Token::Token.new(
          :name   => name,
          :type   => :parameter,
          :value  => value,
          :line   => line,
          :column => col,
          :code   => code(line)
        )
      end

      return retval
    end

    ##
    # Called when a parenthesis is found.
    #
    # @since  2012-07-29
    # @param  [Array] args The arguments passed to this method.
    # @return [Array]
    #
    def on_paren(args)
      return args
    end

    ##
    # Called when a new method is defined.
    #
    # @since  2012-07-29
    # @param  [Array] name Array containing details about the method name.
    # @param  [Array] params Array containing the method parameters.
    # @param  [Array] body Array containing the body of the method.
    # @return [Rlint::Token::MethodToken]
    #
    def on_def(name, params, body)
      return Token::MethodToken.new(
        :name       => name[1],
        :type       => :def,
        :value      => body,
        :parameters => params,
        :line       => name[2][0],
        :column     => name[2][1],
        :code       => code(name[2][0])
      )
    end

    ##
    # Called when a new class is defined.
    #
    # @since  2012-07-29
    # @param  [Rlint::Token::VariableToken] klass Token for the class' name.
    # @param  [Rlint::Token::VariableToken] parent Token for the parent class.
    # @param  [Array] body Array containing the body of the class.
    # @return [Rlint::Token::ClassToken]
    #
    def on_class(klass, parent, body)
      return Token::ClassToken.new(
        :name   => klass.name,
        :type   => :class,
        :line   => klass.line,
        :column => klass.column,
        :parent => parent.name,
        :value  => body
      )
    end

    ##
    # Called when a method is called.
    #
    # @since  2012-07-29
    # @param  [Array] method Array containing details about the method name.
    # @return [Rlint::Token::MethodToken]
    #
    def on_fcall(method)
      token = Token::MethodToken.new(
        :name       => method[1],
        :type       => :method,
        :line       => method[2][0],
        :column     => method[2][1],
        :code       => code(lineno),
        :parameters => @parameters
      )

      @parameters = nil

      return token
    end

    ##
    # Called when a method is called without any parenthesis.
    #
    # @since  2012-07-29
    # @param  [Array] method Array containing details about the method name.
    # @param  [Array] args Array containing details about the method arguments.
    # @return [Rlint::Token::MethodToken]
    #
    def on_command(method, args)
      return Token::MethodToken.new(
        :name       => method[1],
        :type       => :method,
        :line       => method[2][0],
        :column     => method[2][1],
        :code       => code(method[2][0]),
        :parameters => args
      )
    end

    ##
    # Called when an operator (`*` and `<<` for example) is used.
    #
    # @since 2012-07-29
    # @param [Rlint::Token::Token] left The token to the left of the operator.
    # @param [Symbol] operator The operator that was used.
    # @param [Rlint::Token::Token] right The token to the right of the
    #  operator.
    # @return [Rlint::Token::OperatorToken]
    #
    def on_binary(left, operator, right)
      return Token::OperatorToken.new(
        :name  => operator,
        :left  => left,
        :right => right
      )
    end

    ##
    # Called when a `return` statement is found.
    #
    # @since  2012-07-29
    # @param  [Array] retval Array containing details about the return value.
    # @return [Rlint::Token::Token]
    #
    def on_return(retval)
      return Token::Token.new(
        :name       => 'return',
        :type       => :statement,
        :parameters => retval,
        :line       => lineno,
        :column     => column,
        :code       => code(lineno)
      )
    end

    ##
    # Called when a new variable is defined.
    #
    # @since  2012-07-29
    # @param  [Array] variable Array containing details about the variable.
    # @param  [Array] value Array containing details about the variable's
    #  value.
    # @return [Rlint::Token::VariableToken]
    #
    def on_assign(variable, value)
      line_number = variable[1][2][0]

      return Token::VariableToken.new(
        :name   => variable[1][1],
        :type   => variable[1][0],
        :value  => value,
        :line   => line_number,
        :column => variable[1][2][1],
        :code   => code(line_number)
      )
    end

    ##
    # Called when a defined variable is referenced. This method is **not**
    # called when an undefined variable is referenced.
    #
    # @since  2012-07-29
    # @param  [Array] variable Array containing details about the variable.
    # @return [Rlint::Token::VariableToken]
    #
    def on_var_ref(variable)
      type  = variable[0]
      var   = variable[1]

      return Token::VariableToken.new(
        :name   => var,
        :type   => type,
        :line   => variable[2][0],
        :column => variable[2][1],
        :code   => code(lineno)
      )
    end

    ##
    # Called when a constant is referenced.
    #
    # @since  2012-07-29
    # @return [Rlint::Token::VariableToken]
    #
    def on_const_ref(const)
      return on_var_ref(const)
    end

    ##
    # Called when an integer is found.
    #
    # @since  2012-07-29
    # @param  [Array] int Array containing details about the integer.
    # @return [Rlint::Token::Token]
    #
    def on_int(int)
      return Token::ValueToken.new(
        :type   => :integer,
        :value  => int,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a floating point number is found.
    #
    # @since 2012-08-02
    # @param [Array] float Array containing details about the floating point
    #  number.
    # @return [Rlint::Token::ValueToken]
    #
    def on_float(float)
      return Token::ValueToken.new(
        :type   => :float,
        :value  => float,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a string literal was found.
    #
    # @since  2012-07-29
    # @param  [Array] string Array containing details about the string.
    # @return [Rlint::Token::ValueToken]
    #
    def on_string_literal(string)
      return string[1]
    end

    ##
    # Called when a string is found.
    #
    # @since  2012-08-01
    # @param  [String] string The content of the string.
    # @return [Rlint::Token::ValueToken]
    #
    def on_tstring_content(string)
      return Token::ValueToken.new(
        :type   => :string,
        :value  => string,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a symbol is found.
    #
    # @since  2012-07-30
    # @param  [Array] symbol Array containing details about the symbol.
    # @return [Rlint::Token::ValueToken]
    #
    def on_symbol_literal(symbol)
      symbol = symbol[1]

      return Token::ValueToken.new(
        :type   => :symbol,
        :value  => symbol[1],
        :line   => symbol[2][0],
        :column => symbol[2][1],
        :code   => code(symbol[2][0])
      )
    end

    ##
    # Called when an array is found.
    #
    # @since  2012-07-30
    # @param  [Array] values An array containing the values of the found array.
    # @return [Rlint::Token::ValueToken]
    #
    def on_array(values)
      values ||= []

      # When using %W each value is returned as an array containing a single
      # token (instead of directly returning a token).
      values.map! do |v|
        if v.is_a?(Array)
          v[0]
        else
          v
        end
      end

      return Token::ValueToken.new(
        :type   => :array,
        :value  => values,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a regular expression is found.
    #
    # @since 2012-08-02
    # @param [Array] regex Array containing the details about the regular
    #  expression's value.
    # @param [Array] regex_end Array containing details about the regular
    #  expression mode.
    # @return [Rlint::Token::ValueToken]
    #
    def on_regexp_literal(regex, regex_end)
      regex   = regex[0]
      mode    = regex_end[1]
      mode[0] = '/'

      return Token::ValueToken.new(
        :type   => :regular_expression,
        :value  => '/' + regex.value + mode,
        :line   => regex.line,
        :column => regex.column,
        :code   => regex.code
      )
    end

    ##
    # Called when a hash is found.
    #
    # @since  2012-07-30
    # @param  [Array] hash Array containing details about the hash.
    # @return [Rlint::Token::ValueToken]
    #
    def on_hash(hash)
      return Token::ValueToken.new(
        :value  => hash,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a set of key/value pairs is found.
    #
    # @since 2012-07-30
    #
    def on_assoclist_from_args(args)
      return args
    end

    ##
    # Called for each key/value pair of a hash.
    #
    # @since 2012-07-30
    # @param [Rlint::Token::Token] key Token containing details about the key.
    # @param [Rlint::Token::Token] value Token containing details about the
    #  value of the key.
    # @return [Rlint::Token::KeyValueToken]
    #
    def on_assoc_new(key, value)
      return Token::KeyValueToken.new(
        :type  => :key_value,
        :key   => key,
        :value => value
      )
    end

    private

    ##
    # Returns the line of code for a given line number.
    #
    # @since 2012-07-29
    # @param [Fixnum|Bignum] line The line number as returned by Ripper. Unlike
    #  Array indexes these line numbers start with 1 instead of 0.
    # @return [String]
    #
    def code(line)
      return @lines[line - 1]
    end
  end # Parser
end # Rlint

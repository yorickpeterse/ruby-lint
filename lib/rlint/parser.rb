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
    def initialize(code, file = '(rlint)', line = 1)
      @lines      = code.lines.to_a
      @parameters = nil
      @file       = file
      @elsif      = []
      @when       = []
      @else       = nil

      super
    end

    ##
    # Called when a parser error is found.
    #
    # @since  2012-08-05
    # @param  [String] message The error message for the parser error.
    # @raise  Rlint::ParserError
    #
    def on_parse_error(message)
      raise ParserError.new(message, lineno, column, @file)
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
    # Called when a void statement is found.
    #
    # @since  2012-08-02
    # @return [NilClass]
    #
    def on_void_stmt
      return nil
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
    # @param  [Array] param_tokens Array of arguments passed to this method.
    # @return [Array]
    #
    def on_params(*param_tokens)
      retval = []

      param_tokens.each do |params|
        next if params.nil?

        params.each do |param|
          if !param.is_a?(Array)
            param = [param]
          end

          block_var = false
          rest_var  = false

          if param[0].respond_to?(:block_variable)
            block_var = param[0].block_variable
          end

          if param[0].respond_to?(:rest_variable)
            rest_var = param[0].rest_variable
          end

          retval << Token::VariableToken.new(
            :name           => param[0].name,
            :value          => param[1],
            :type           => :local_variable,
            :line           => param[0].line,
            :column         => param[0].column,
            :code           => code(param[0].line),
            :block_variable => block_var,
            :rest_variable  => rest_var
          )
        end
      end

      return retval
    end

    ##
    # Called when a block is specified as a parameter (by prefixing the
    # parameter with an ampersand).
    #
    # @since  2012-08-05
    # @param  [Rlint::Token::Token] arg The argument that was found.
    # @return [Array]
    #
    def on_blockarg(arg)
      token = Token::VariableToken.new(
        :name           => arg.name,
        :type           => :local_variable,
        :line           => arg.line,
        :column         => arg.column,
        :code           => arg.code,
        :block_variable => true
      )

      return [[token]]
    end

    ##
    # Returned when a "catch all" parameter is found.
    #
    # @since 2012-08-06
    # @see   Rlint::Parser#on_blockarg
    #
    def on_rest_param(arg)
      token = Token::VariableToken.new(
        :name          => arg.name,
        :type          => :local_variable,
        :line          => arg.line,
        :column        => arg.column,
        :code          => arg.code,
        :rest_variable => true
      )

      return [[token]]
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
    # Called when a block is passed to a method call.
    #
    # @since 2012-08-05
    # @param [Rlint::Token::MethodToken] block Token containing basic details
    #  about the proc.
    # @param [Array] details Array containing two elements. The first element
    #  is an array containing the block parameters, the second element is an
    #  array of tokens of the block's body.
    #
    def on_method_add_block(block, details)
      token = Token::BlockToken.new(
        :parameters => details[0],
        :value      => details[1].select { |v| !v.nil? },
        :line       => block.line,
        :column     => block.column,
        :code       => block.code
      )

      if block.is_a?(Rlint::Token::MethodToken)
        block.block = token

        return block
      else
        return token
      end
    end

    ##
    # Called when a lambda is found.
    #
    # @since  2012-08-05
    # @param  [Array] params Array of token classes for each parameter.
    # @param  [Array] body Array containing the tokens of the lambda's body.
    # @return [Rlint::Token::BlockToken]
    #
    def on_lambda(params, body)
      return Token::BlockToken.new(
        :parameters => params,
        :value      => body.select { |v| !v.nil? },
        :line       => lineno,
        :column     => column,
        :code       => code(lineno)
      )
    end

    ##
    # Called when a set of block parameters is found.
    #
    # @since  2012-08-05
    # @param  [Array] params The parameters of the block.
    # @param  [Mixed] extra Extra parameter of which I don't know the purpose
    #  (so much for proper Ripper documentation).
    # @return [Array]
    #
    def on_block_var(params, extra)
      return params
    end

    ##
    # Called when a block is created using braces is found.
    #
    # @since  2012-08-05
    # @param  [Array] params An array of block parameters.
    # @param  [Array] body Array containing the tokens of the block's body.
    # @return [Array]
    #
    def on_brace_block(params, body)
      return [params, body]
    end

    ##
    # Called when a block is created using `do/end` instead of braces.
    #
    # @since 2012-08-05
    # @see   Rlint::Parser#on_brace_block
    #
    def on_do_block(params, body)
      return [params, body]
    end

    ##
    # Called when a new method is defined.
    #
    # @since  2012-07-29
    # @param  [Array] name Array containing details about the method name.
    # @param  [Array] params Array containing the method parameters.
    # @param  [Array] body Array containing the body of the method.
    # @return [Rlint::Token::MethodDefinitionToken]
    #
    def on_def(name, params, body)
      return Token::MethodDefinitionToken.new(
        :name       => name.name,
        :value      => body,
        :parameters => params,
        :line       => name.line,
        :column     => name.column,
        :code       => code(name.line)
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
      if klass.is_a?(Array)
        first_token = nil
        name        = []

        # Build the name based on the namespace segments.
        klass.each do |segment|
          next unless segment.respond_to?(:name)

          first_token = segment unless first_token

          name << segment.name
        end

        name   = name.join('::')
        line   = first_token.line
        column = first_token.column
      else
        name   = klass.name
        line   = klass.line
        column = klass.column
      end

      # TODO: this process removes too much information about the parent class.
      # Once it's more clear what information is exactly needed for proper
      # static code analysis this should probably be modified.
      parent_class = nil

      if parent.is_a?(Rlint::Token::Token)
        parent_class = parent.name
      elsif parent.is_a?(Array)
        parent_class = parent.map { |token| token.name }.join('::')
      end

      return Token::ClassToken.new(
        :name   => name,
        :line   => line,
        :column => column,
        :code   => code(line),
        :parent => parent_class,
        :value  => body.select { |n| !n.nil? }
      )
    end

    ##
    # Called when a module is found.
    #
    # @since  2012-08-02
    # @param  [Array] mod Array containing details about the module name.
    # @param  [Array] value The contents of the module.
    # @return [Rlint::Token::ModuleToken]
    #
    def on_module(mod, value)
      if mod.is_a?(Array)
        first_token = nil
        name        = []

        # Build the name based on the namespace segments.
        mod.each do |segment|
          next unless segment.respond_to?(:name)

          first_token = segment unless first_token

          name << segment.name
        end

        name   = name.join('::')
        line   = first_token.line
        column = first_token.column
      else
        name   = mod.name
        line   = mod.line
        column = mod.column
      end

      return Token::ModuleToken.new(
        :name   => name,
        :line   => line,
        :column => column,
        :code   => code(line),
        :value  => value.select { |n| !n.nil? }
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
        :name       => method.name,
        :type       => :method,
        :line       => method.line,
        :column     => method.column,
        :code       => method.code,
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
        :name       => method.name,
        :type       => :method,
        :line       => method.line,
        :column     => method.column,
        :code       => method.code,
        :parameters => args
      )
    end

    ##
    # Called when a method is invoked on an object without using parenthesis.
    #
    # @since 2012-08-05
    # @param [Rlint::Token::Token] receiver The object on which the method was
    #  called.
    # @param [String] sep The method separator that was used.
    # @param [Array] method Array containing details about the method that was
    #  invoked.
    # @param  [Array] args The arguments passed to the method call.
    # @return [Array]
    #
    def on_command_call(receiver, sep, method, args)
      return Token::MethodToken.new(
        :receiver   => receiver,
        :separator  => sep,
        :name       => method.name,
        :line       => method.line,
        :column     => method.column,
        :code       => method.code,
        :parameters => args
      )
    end

    ##
    # Called when a method is invoked on an object using parenthesis.
    #
    # @since 2012-08-05
    # @see   Rlint::Parser#on_command_call
    #
    def on_call(receiver, sep, method)
      token       = on_command_call(receiver, sep, method, @parameters)
      @parameters = nil

      return token
    end

    ##
    # Called when certain methods such as `private` are invoked.
    #
    # @since  2012-08-07
    # @param  [Rlint::Token::Token] token The token that was found.
    # @return [Rlint::Token::Token]
    #
    def on_vcall(token)
      return token
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
    # @return [Rlint::Token::MethodToken]
    #
    def on_return(retval)
      return Token::MethodToken.new(
        :name       => 'return',
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
      if variable.is_a?(Rlint::Token::Token)
        name   = variable.name
        type   = variable.respond_to?(:type) ? variable.type : :local_variable
        line   = variable.line
        column = variable.column
        code   = variable.code
      else
        name   = variable[1]
        type   = variable[0]
        line   = variable[2][0]
        column = variable[2][1]
        code   = code(line)
      end

      return Token::VariableToken.new(
        :name   => name,
        :type   => type,
        :line   => line,
        :column => column,
        :code   => code,
        :value  => value,
      )
    end

    ##
    # Called when a defined variable is referenced. This method is **not**
    # called when an undefined variable is referenced.
    #
    # @since  2012-07-29
    # @param  [Rlint::Token::Token] variable Token class containing details
    #  about the found variable.
    # @return [Rlint::Token::VariableToken]
    #
    def on_var_ref(variable)
      if variable.is_a?(Rlint::Token::Token)
        name   = variable.name
        type   = variable.respond_to?(:type) ? variable.type : :local_variable
        line   = variable.line
        column = variable.column
        code   = variable.code
      else
        name   = variable[1]
        type   = variable[0]
        line   = variable[2][0]
        column = variable[2][1]
        code   = code(line)
      end

      return Token::VariableToken.new(
        :name   => name,
        :type   => type,
        :line   => line,
        :column => column,
        :code   => code
      )
    end

    ##
    # Called when a `var_field` token is found (e.g. in `for` loops).
    #
    # @since  2012-08-13
    # @param  [Rlint::Token::Token] variable The variable that was found.
    # @return [Rlint::Token::Token]
    #
    def on_var_field(variable)
      return variable
    end

    ##
    # Called when a constant is referenced.
    #
    # @since  2012-07-29
    # @return [Rlint::Token::VariableToken]
    #
    def on_const_ref(const)
      token      = on_var_ref(const)
      token.type = :constant

      return token
    end

    ##
    # Called when a constant is referenced using multiple namespace segments.
    #
    # @since 2012-08-07
    # @see   Rlint::Parser#on_const_ref
    #
    def on_top_const_ref(const)
      return on_const_ref(const)
    end

    ##
    # Called when a constant is referenced using multiple namespace segments.
    #
    # @since  2012-08-07
    # @param  [Array] tokens An array of tokens for each segment.
    # @return [Array]
    #
    def on_const_path_ref(*tokens)
      return tokens
    end

    ##
    # Called when an indentifier is found.
    #
    # @since  2012-08-06
    # @param  [String] ident The identifier that was found.
    # @return [Rlint::Token::Token]
    #
    def on_ident(ident)
      return Token::Token.new(
        :name   => ident,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when an undefined constant is found.
    #
    # @since  2012-08-02
    # @return [Rlint::Token::VariableToken]
    #
    def on_const(const)
      return Token::VariableToken.new(
        :name   => const,
        :type   => :constant,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
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
        :value  => symbol.name,
        :line   => symbol.line,
        :column => symbol.column,
        :code   => code(symbol.line)
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
      mode[0] = ''

      return Token::RegexpToken.new(
        :value  => regex.value,
        :modes  => mode.chars.to_a,
        :line   => regex.line,
        :column => regex.column,
        :code   => regex.code
      )
    end

    ##
    # Called when a range is found.
    #
    # @since 2012-08-02
    # @param [Rlint::Token::ValueToken|Rlint::Token::VariableToken] start The
    #  start value of the range.
    # @param [Rlint::Token::ValueToken|Rlint::Token::VariableToken] stop The
    #  end value of the range.
    # @return [Rlint::Token::RangeToken]
    #
    def on_dot2(start, stop)
      return Token::RangeToken.new(
        :start_value => start,
        :end_value   => stop,
        :line        => start.line,
        :column      => start.column,
        :code        => start.code
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
        :type   => :hash,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a hash was found but was declared without the explicit use of
    # curly braces.
    #
    # @since  2012-08-07
    # @param  [Array] hash Array containing details about the hash' contents.
    # @return [Rlint::Token::ValueToken]
    #
    def on_bare_assoc_hash(hash)
      return on_hash(hash)
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

    ##
    # Found when an array or hash, stored in a variable, is accessed using a
    # key.
    #
    # @since  2012-08-07
    # @param  [Rlint::Token::VariableToken] var The variable that was accessed.
    # @param  [Rlint::Token::ValueToken] value The value of the key.
    # @return [Rlint::Token::VariableToken]
    #
    def on_aref(var, value)
      var.key = value[0]

      return var
    end

    ##
    # Called when a new value is assigned to a variable unless there's no
    # existing value that evaluates to true.
    #
    # @since 2012-08-07
    # @see   Rlint::Parser#on_binary
    #
    def on_opassign(left, operator, right)
      operator = operator[1]

      return on_binary(left, operator, right)
    end

    ##
    # Called when an if statement is found.
    #
    # @since 2012-08-08
    # @param [Rlint::Token::Token] statement The tokens of the statement.
    # @parma [Array] body Array containing the tokens of the body of the
    #  statement.
    # @param [Array] rest Array containing details about any `elsif` and `else`
    #  statements.
    # @return [Rlint::Token::IfToken]
    #
    def on_if(statement, body, rest)
      token = Token::IfToken.new(
        :statement => statement,
        :value     => body,
        :else      => @else,
        :elsif     => @elsif.reverse,
        :line      => lineno,
        :column    => column,
        :code      => code(lineno)
      )

      @else  = nil
      @elsif = []

      return token
    end

    ##
    # Called when an `else` statement is found.
    #
    # @since 2012-08-08
    # @param [Array] body Array containing the tokens of the body of the
    #  statement.
    # @return [NilClass]
    #
    def on_else(body)
      @else = Token::StatementToken.new(
        :name   => :else,
        :value  => body,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )

      return nil
    end

    ##
    # Called when an `elsif` statement is found.
    #
    # @since  2012-08-08
    # @param  [Rlint::Token::Token] statement The statement to evaluate.
    # @param  [Array] body Array containing the tokens of the body.
    # @param  [Rlint::Token::StatementToken|NilClass] previous Token containing
    #  details about the previous statement.
    # @return [Array]
    #
    def on_elsif(statement, body, previous)
      @elsif << Token::StatementToken.new(
        :name      => :elsif,
        :value     => body,
        :statement => statement,
        :line      => lineno,
        :column    => column,
        :code      => code(lineno)
      )

      return nil
    end

    ##
    # Called when a `case` statement is found.
    #
    # @since 2012-08-12
    # @param [Rlint::Token::Token] statement The statement to evaluate.
    # @param [NilClass] rest The last `when` token, ignored since these tokens
    #  are stored in an array.
    # @return [Rlint::Token::CaseToken]
    #
    def on_case(statement, rest)
      token = Token::CaseToken.new(
        :statement => statement,
        :else      => @else,
        :when      => @when.reverse,
        :line      => lineno,
        :column    => column,
        :code      => code(lineno)
      )

      @else, @when = nil, nil

      return token
    end

    ##
    # Called when a `when` statement is found.
    #
    # @since 2012-08-12
    # @see   Rlint::Parser#on_elsif
    #
    def on_when(statements, body, previous)
      @when << Token::StatementToken.new(
        :name      => :when,
        :statement => statements,
        :value     => body,
        :line      => lineno,
        :column    => column,
        :code      => code(lineno)
      )

      return nil
    end

    ##
    # Called when a `for` statement is found.
    #
    # @since 2012-08-13
    # @param [Rlint::Token::Token|Array] variables The variables to create for
    #  each iteration.
    # @param  [Rlint::Token::Token] enumerable The enumerable to iterate over.
    # @param  [Array] body The body of the for loop.
    # @return [Rlint::Token::ForToken]
    #
    def on_for(variables, enumerable, body)
      unless variables.is_a?(Array)
        variables = [variables]
      end

      return Token::ForToken.new(
        :name       => :for,
        :variables  => variables,
        :enumerable => enumerable,
        :value      => body,
        :line       => lineno,
        :column     => column,
        :code       => code(lineno)
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

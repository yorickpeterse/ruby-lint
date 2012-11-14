module RubyLint
  ##
  # {RubyLint::Parser} uses Ripper to parse Ruby source code and turn it into an
  # AST. Instead of returning arrays (the Ripper default) this class uses the
  # various token classes such as {RubyLint::Token::Token} and
  # {RubyLint::Token::VariableToken}. It also takes care of a few more things such
  # as saving the associated line of code and setting method visibility.
  #
  # Parsing Ruby code requires two steps:
  #
  # 1. Create a new instance of this class and pass a string containing source
  #    code to the constructor method.
  # 2. Call the method {RubyLint::Parser#parse} and do something with the returned
  #    AST.
  #
  # For example, to parse a simple "Hello World" example you'd use this parser
  # as following:
  #
  #     require 'pp'
  #
  #     parser = RubyLint::Parser.new('puts "Hello, world!"')
  #
  #     pp parser.parse
  #
  # This outputs the following AST:
  #
  #     [#<RubyLint::Token::MethodToken:0x000000012f04d0
  #       @code="puts \"Hello, world!\"",
  #       @column=0,
  #       @event=:method,
  #       @line=1,
  #       @name="puts",
  #       @parameters=
  #        [#<RubyLint::Token::Token:0x000000012e9fb8
  #          @code="puts \"Hello, world!\"",
  #          @column=6,
  #          @event=:string,
  #          @line=1,
  #          @name="Hello, world!",
  #          @type=:string,
  #          @value="Hello, world!">],
  #       @type=:method>]
  #
  class Parser < Ripper::SexpBuilderPP
    ##
    # Array containing all the event names of which the methods should simply
    # returned the passed argument.
    #
    # @return [Array]
    #
    RETURN_FIRST_ARG_EVENTS = [
      :program,
      :var_field,
      :args_add_block,
      :assoclist_from_args,
      :symbol_literal,
      :begin,
      :mrhs_new_from_args,
      :blockarg,
      :rest_param,
      :arg_paren,
      :block_var,
      :const_ref,
      :top_const_ref,
      :mlhs_add_star
    ]

    ##
    # Array of events of which the callback method should simply return nil.
    #
    # @return [Array]
    #
    RETURN_NIL_EVENTS = [:void_stmt]

    ##
    # Array of event names that should return an instance of
    # {RubyLint::Token::MethodToken}.
    #
    # @return [Array]
    #
    RETURN_METHOD_EVENTS = [:fcall, :vcall]

    ##
    # Hash containing the names of various event callbacks that should return
    # a token class containing details about a single line statement.
    #
    # @return [Hash]
    #
    MOD_STATEMENT_EVENTS = {
      :while_mod  => :while,
      :if_mod     => :if,
      :unless_mod => :unless,
      :until_mod  => :until
    }

    ##
    # Array containing the three method calls that set the visibility of a
    # method.
    #
    # @return [Array]
    #
    METHOD_VISIBILITY = ['public', 'protected', 'private']

    ##
    # Symbol containing the default method visibility.
    #
    # @return [Symbol]
    #
    DEFAULT_VISIBILITY = :public

    # Return an RubyLint::Token::Token instance for each scanner event instead of
    # an array with multiple indexes.
    SCANNER_EVENTS.each do |event|
      define_method("on_#{event}") do |token|
        return Token::Token.new(
          :name   => token,
          :type   => event,
          :value  => token,
          :line   => lineno,
          :column => column,
          :code   => code(lineno)
        )
      end
    end

    RETURN_FIRST_ARG_EVENTS.each do |event|
      define_method("on_#{event}") { |*args| return args[0] }
    end

    RETURN_NIL_EVENTS.each do |event|
      define_method("on_#{event}") { |*args| return nil }
    end

    RETURN_METHOD_EVENTS.each do |event|
      define_method("on_#{event}") do |token|
        if METHOD_VISIBILITY.include?(token.name)
          @visibility = token.name.to_sym

          return nil
        end

        return Token::MethodToken.new(
          :name   => token.name,
          :line   => token.line,
          :column => token.column,
          :value  => token.name,
          :code   => code(token.line)
        )
      end
    end

    MOD_STATEMENT_EVENTS.each do |ripper_event, ruby_lint_event|
      define_method("on_#{ripper_event}") do |statement, value|
        value = [value] unless value.is_a?(Array)

        return Token::StatementToken.new(
          :type      => ruby_lint_event,
          :statement => statement,
          :value     => value,
          :line      => lineno,
          :column    => column,
          :code      => code(lineno)
        )
      end
    end

    ##
    # Creates a new instance of the parser and pre-defines various instance
    # variables.
    #
    # @see Ripper::SexpBuilderPP#initialize
    #
    def initialize(code, file = '(ruby-lint)', line = 1)
      super

      @file       = file
      @visibility = DEFAULT_VISIBILITY
      @lines      = []

      code.each_line do |code_line|
        @lines << code_line.chomp
      end
    end

    ##
    # Called when a parser error was encountered.
    #
    # @param [String] message The error message.
    # @raise [RubyLint::ParserError]
    #
    def on_parse_error(message)
      raise ParserError.new(message, lineno, column, @file)
    end

    ##
    # Called when a string literal was found.
    #
    # @param  [Array] token Array containing details about the string.
    # @return [RubyLint::Token::Token]
    #
    def on_string_literal(token)
      if token and token[1]
        return token[1]
      else
        return Token::Token.new(
          :name   => '',
          :value  => '',
          :line   => lineno,
          :column => column,
          :type   => :string
        )
      end
    end

    ##
    # Called when a symbol is found.
    #
    # @param  [RubyLint::Token::Token] token The symbol token.
    # @return [RubyLint::Token::Token]
    #
    def on_symbol(token)
      token.type = :symbol

      return token
    end

    ##
    # Called when a symbol using quotes was found.
    #
    # @see RubyLint::Parser#on_symbol
    #
    def on_dyna_symbol(token)
      return on_symbol(token[0])
    end

    ##
    # Called when an expression is embedded in a string.
    #
    # @param  [Array] exp The embedded expressions.
    # @return [RubyLint::Token::Token]
    #
    def on_string_embexpr(exp)
      return exp[0]
    end

    ##
    # Called when an array is found.
    #
    # @param  [Array] values The values of the array.
    # @return [RubyLint::Token::Token]
    #
    def on_array(values)
      values ||= []

      return Token::Token.new(
        :type   => :array,
        :value  => values.map { |v| v.is_a?(Array) ? v[0] : v },
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a reference to a particular array index is found.
    #
    # @param  [RubyLint::Token::Token] array The array that was referenced.
    # @param  [RubyLint::Token::Token] index The index that was referenced.
    # @return [RubyLint::Token::Token]
    #
    def on_aref(array, index)
      array.key = index

      return array
    end

    ##
    # Called when a value is assigned to an array index.
    #
    # @param [RubyLint::Token::Token] array The array that was referenced.
    # @param [RubyLint::Token::Token] index The index of the array that was
    #  referenced.
    # @return [RubyLint::Token::Token]
    #
    def on_aref_field(array, index)
      array.key = index

      return Token::AssignmentToken.new(
        :receiver => array,
        :line     => lineno,
        :column   => column,
        :type     => array.type,
        :code     => code(lineno)
      )
    end

    ##
    # Called when a Hash is found.
    #
    # @param  [Array] pairs An array of key/value pairs of the hash.
    # @return [RubyLint::Token::Token]
    #
    def on_hash(pairs)
      # column() is set to the column number of the very end of the hash.
      col = pairs[0].column rescue column

      return Token::Token.new(
        :type   => :hash,
        :value  => pairs,
        :line   => lineno,
        :column => col,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a bare Hash is found. A bare Hash is a hash that's declared
    # without the curly braces.
    #
    # @see RubyLint::Parser#on_hash
    #
    def on_bare_assoc_hash(pairs)
      return on_hash(pairs)
    end

    ##
    # Called when a new key/value pair of a Hash is found.
    #
    # @param  [RubyLint::Token::Token] key The key of the pair.
    # @param  [RubyLint::Token::Token] value The value of the pair.
    # @return [RubyLint::Token::Token]
    #
    def on_assoc_new(key, value)
      key.name  = key.value
      key.value = value

      return key
    end

    ##
    # Called when a block is created using curly braces.
    #
    # @param [RubyLint::Token::ParametersToken] params The parameters of the
    #  block.
    # @param  [Array] body Array containing the tokens of the block.
    # @return [RubyLint::Token::BlockToken]
    #
    def on_brace_block(params, body)
      return Token::BlockToken.new(
        :parameters => params,
        :value      => body,
        :line       => lineno,
        :column     => column,
        :type       => :block,
        :code       => code(lineno)
      )
    end

    ##
    # Called when a block is created using the do/end statements.
    #
    # @see RubyLint::Parser#on_brace_block
    #
    def on_do_block(params, body)
      return on_brace_block(params, body)
    end

    ##
    # Called when a lambda is found.
    #
    # @see RubyLint::Parser#on_brace_block
    #
    def on_lambda(params, body)
      token      = on_brace_block(params, body)
      token.type = :lambda

      return token
    end

    ##
    # Called when a Range is found.
    #
    # @param  [RubyLint::Token::Token] start The start value of the range.
    # @param  [RubyLint::Token::Token] stop The end value of the range.
    # @return [RubyLint::Token::Token]
    #
    def on_dot2(start, stop)
      return Token::Token.new(
        :type   => :range,
        :line   => start.line,
        :column => start.line,
        :value  => [start, stop],
        :code   => code(start.line)
      )
    end

    ##
    # Called when a regular expression is found.
    #
    # @param [Array] regexp The regular expression's value.
    # @param [RubyLint::Token::Token] modes The modes of the regular expression.
    # @return [RubyLint::Token::RegexpToken]
    #
    def on_regexp_literal(regexp, modes)
      regexp      = regexp[0]
      modes_array = []

      if modes
        modes_array = modes.value.split('').select { |c| c =~ /\w/ }
      end

      return Token::RegexpToken.new(
        :type   => :regexp,
        :value  => regexp.value,
        :line   => regexp.line,
        :column => regexp.column,
        :modes  => modes_array,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a value is assigned to a variable.
    #
    # @param  [RubyLint::Token::Token] variable The variable that is assigned.
    # @param  [RubyLint::Token::Token] value The value to assign.
    # @return [RubyLint::Token::VariableToken]
    #
    def on_assign(variable, value)
      if variable.class == RubyLint::Token::AssignmentToken
        variable.value = value

        return variable
      end

      if variable.is_a?(Array)
        line = variable[-1].line
        col  = variable[-1].column
        type = variable[-1].type
        name = variable
      else
        line = variable.line
        col  = variable.column
        type = variable.type
        name = variable.name
      end

      return Token::AssignmentToken.new(
        :line   => line,
        :column => col,
        :name   => name,
        :type   => type,
        :value  => value,
        :code   => code(line)
      )
    end

    ##
    # Called when a set of values is assigned to multiple variables.
    #
    # @param [Array] variables The variables that are being assigned values.
    # @param [Array|RubyLint::Token::Token] values The values to assign.
    # @return [RubyLint::Token::AssignmentToken]
    #
    def on_massign(variables, values)
      assignments = []
      assigned    = false

      variables.each_with_index do |variable, index|
        value = nil

        # Determine what value to use for the current variable.
        if values.is_a?(Array) and values[index]
          value = values[index]

        # A single value (e.g. an array or number) is assigned to multiple
        # variables.
        elsif values.is_a?(Token::Token)
          # A token with a list of values is being assigned (e.g. an array).
          if values.value.is_a?(Array) and values.value[index]
            value = values.value[index]

          # A single value is being assigned such as `foo, bar = 10`.
          elsif !assigned
            value    = values
            assigned = true
          end
        end

        # Values set using splat assignments are always arrays.
        if variable.splat and value
          value = Token::Token.new(
            :type   => :array,
            :line   => value.line,
            :column => value.column,
            :code   => value.code,
            :value  => [value]
          )
        end

        assignments << Token::AssignmentToken.new(
          :name   => variable.name,
          :line   => variable.line,
          :column => variable.column,
          :code   => variable.code,
          :type   => variable.type,
          :splat  => variable.splat,
          :value  => value,
        )
      end

      return assignments
    end

    ##
    # Called when a splat assignment is found.
    #
    # @param [Array] left The variables assigned on the left hand side of the
    #  splat operator.
    # @param [RubyLint::Token::Token|NilClass] right The variable assigned on
    #  the right hand side of the operator.
    #
    def on_mlhs_add_star(left, right)
      variables = left || []

      if right and right.name != '*'
        right.splat = true

        variables << right
      end

      return variables
    end

    ##
    # Called when a value is assigned to an object attribute.
    #
    # @param [RubyLint::Token::VariableToken] receiver The receiver of the
    #  assignment.
    # @param [Symbol] operator The operator that was used to separate the
    #  object and attribute.
    # @param [RubyLint::Token::Token] attribute The attribute to which the value
    #  is assigned.
    # @return [RubyLint::Token::VariableToken]
    #
    def on_field(receiver, operator, attribute)
      return Token::AssignmentToken.new(
        :name     => attribute.value,
        :line     => attribute.line,
        :column   => attribute.column,
        :type     => attribute.type,
        :receiver => receiver,
        :operator => operator,
        :code     => code(attribute.line)
      )
    end

    ##
    # Called when a (binary) operator operation is performed.
    #
    # @param  [RubyLint::Token::Token] left The left hand side of the operator.
    # @param  [Symbol] op The operator that was used.
    # @param  [RubyLint::Token::Token] right The right hand side of the operator.
    # @return [RubyLint::Token::Token]
    #
    def on_binary(left, op, right)
      return Token::Token.new(
        :type   => :binary,
        :value  => [left, op, right],
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when an unary operator/operation is found.
    #
    # @param [Symbol] operator The unary operator.
    # @param [RubyLint::Token::Token] token The token after the unary operator.
    # @return [RubyLint::Token::Token]
    #
    def on_unary(operator, token)
      return Token::Token.new(
        :type   => :unary,
        :value  => [operator, token],
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a set of parenthesis is found.
    #
    # @param  [Array] value The data inside the parenthesis.
    # @return [RubyLint::Token::Token]
    #
    def on_paren(value)
      if value.is_a?(Array)
        return value[0]
      else
        return value
      end
    end

    ##
    # Called when a return statement is found.
    #
    # @param  [Array] values The return values of the statement.
    # @return [RubyLint::Token::StatementToken]
    #
    def on_return(values)
      source = code(lineno)
      col    = calculate_column(source, 'return')

      return Token::StatementToken.new(
        :type   => :return,
        :line   => lineno,
        :column => col,
        :value  => values,
        :code   => source
      )
    end

    ##
    # Called when a while loop is found.
    #
    # @param  [RubyLint::Token::Token|Array] statement The statement to
    #  evaluate.
    # @param  [RubyLint::Token::Token] value The body of the while loop.
    # @return [RubyLint::Token::StatementToken]
    #
    def on_while(statement, value)
      line   = statement.is_a?(Array) ? statement[0].line : statement.line
      source = code(line)
      col    = calculate_column(source, 'while')

      return Token::StatementToken.new(
        :type      => :while,
        :statement => statement,
        :value     => value,
        :line      => line,
        :column    => col,
        :code      => source
      )
    end

    ##
    # Called when a for loop is found.
    #
    # @param  [Array|RubyLint::Token::Token] variables A single token or array
    #  of tokens for the variables to create for each iteration.
    # @param  [RubyLint::Token::Token] enumerable The enumerable to iterate.
    # @param  [Array] value The body of the for loop.
    # @return [RubyLint::Token::StatementToken]
    #
    def on_for(variables, enumerable, value)
      variables = [variables] unless variables.is_a?(Array)
      source    = code(variables[0].line)
      col       = calculate_column(source, 'for')

      return Token::StatementToken.new(
        :type      => :for,
        :statement => [variables, enumerable],
        :value     => value,
        :column    => col,
        :line      => variables[0].line,
        :code      => source
      )
    end

    ##
    # Called when an if statement is found.
    #
    # @param  [RubyLint::Token::Token] statement The if statement to evaluate.
    # @param  [Array] value Array containing the tokens of the code that will
    #  be executed if the if statement evaluates to true.
    # @param  [Array] rest Array containing the tokens for the elsif and else
    #  statements (if any).
    # @return [RubyLint::Token::StatementToken]
    #
    def on_if(statement, value, rest)
      source = code(statement.line)
      col    = calculate_column(source, 'if')

      else_statement   = nil
      elsif_statements = []

      if rest and rest.respond_to?(:each)
        rest.each do |token|
          next if token.nil?

          if token.type == :elsif
            elsif_statements << token
          else
            else_statement = token
          end
        end
      end

      return Token::StatementToken.new(
        :type      => :if,
        :statement => statement,
        :value     => value,
        :line      => statement.line,
        :column    => col,
        :else      => else_statement,
        :elsif     => elsif_statements.reverse,
        :code      => source
      )
    end

    ##
    # Called whne a tenary operator is found.
    #
    # @see RubyLint::Parser#on_if
    #
    def on_ifop(statement, value, else_statement)
      else_statement = Token::StatementToken.new(
        :type   => :else,
        :value  => [else_statement],
        :line   => else_statement.line,
        :column => else_statement.column,
        :code   => code(else_statement.line)
      )

      return Token::StatementToken.new(
        :type      => :if,
        :statement => statement,
        :value     => [value],
        :line      => statement.line,
        :column    => statement.column,
        :code      => code(statement.line),
        :else      => else_statement
      )
    end

    ##
    # Called when an else statement is found.
    #
    # @param  [Array] value The value of the statement.
    # @return [RubyLint::Token::StatementToken]
    #
    def on_else(value)
      return Token::StatementToken.new(
        :type   => :else,
        :value  => value,
        :column => column,
        :line   => lineno,
        :code   => code(lineno)
      )
    end

    ##
    # Called when an elsif statement is found.
    #
    # @param [RubyLint::Token::Token] statement The statement to evaluate.
    # @param [Array] value The value of the elsif statement.
    # @param [Array|RubyLint::Token::Token] list A list of else and elsif
    #  statements.
    # @return [Array]
    #
    def on_elsif(statement, value, list)
      source = code(statement.line)
      col    = calculate_column(source, 'elsif')

      token = Token::StatementToken.new(
        :type      => :elsif,
        :statement => statement,
        :value     => value,
        :line      => statement.line,
        :column    => col,
        :code      => source
      )

      unless list.is_a?(Array)
        list = [list]
      end

      list << token
    end

    ##
    # Called when the body of a block of Ruby code is found (e.g. a method
    # definition or a begin/rescue block).
    #
    # @param [Array] value Array containing the tokens of the body/statement.
    # @param [Array] rescues An array of rescue statements.
    # @param [RubyLint::Token::StatementToken] else_statement The else statement
    #  of the block.
    # @param [RubyLint::Token::StatementToken] ensure_statement The ensure
    #  statement of the block.
    # @return [RubyLint::Token::BeginRescueToken]
    #
    def on_bodystmt(value, rescues, else_statement, ensure_statement)
      if rescues.nil? and else_statement.nil? and ensure_statement.nil?
        return value
      end

      return Token::BeginRescueToken.new(
        :type   => :begin,
        :value  => value,
        :rescue => (rescues || []).reverse.select { |t| !t.nil? },
        :ensure => ensure_statement,
        :else   => else_statement,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a rescue statement is found.
    #
    # @param [Array] exceptions An array of exceptions to catch.
    # @param [RubyLint::Token::Token] variable The variable in which to store
    #  the exception details.
    # @param  [Array] value The value of the rescue statement.
    # @param  [Array|RubyLint::Token::Token] list A set of all the rescue tokens.
    # @return [RubyLint::Token::StatementToken]
    #
    def on_rescue(exceptions, variable, value, list)
      source = code(lineno)
      col    = calculate_column(source, 'rescue')

      token = Token::StatementToken.new(
        :type      => :rescue,
        :statement => [exceptions, variable],
        :line      => lineno,
        :column    => col,
        :value     => value,
        :code      => source
      )

      unless list.is_a?(Array)
        list = [list]
      end

      list << token
    end

    ##
    # Called when a single line rescue statement (in the form of `[VALUE]
    # rescue [RESCUE VALUE]`) is found.
    #
    # @param [RubyLint::Token::Token|Array] value The body of the begin/rescue
    #  statement.
    # @param [RubyLint::Token::Token] statement The statement to evaluate when the
    #  data in `value` raised an exception.
    # @return [RubyLint::Token::BeginRescueToken]
    #
    def on_rescue_mod(value, statement)
      value     = [value]     unless value.is_a?(Array)
      statement = [statement] unless statement.is_a?(Array)

      return Token::BeginRescueToken.new(
        :type   => :rescue,
        :rescue => statement,
        :value  => value,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when an ensure statement is found.
    #
    # @param  [Array] value The value of the statement.
    # @return [RubyLint::Token::StatementToken]
    #
    def on_ensure(value)
      return Token::StatementToken.new(
        :type   => :ensure,
        :value  => value,
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called for an entire case/when/else block.
    #
    # @param [RubyLint::Token::Token] statement The statement of the `case`
    #  statement itself.
    # @param [Array] list Array containing the various when statements and
    #  optionally an else statement.
    # @return [RubyLint::Token::CaseToken]
    #
    def on_case(statement, list)
      when_statements = []
      else_statement  = nil
      list            = list.reject(&:nil?)

      line   = statement.respond_to?(:line) ? statement.line : list[0].line
      source = code(line)
      col    = calculate_column(source, 'case')

      if list and list.respond_to?(:each)
        list.each do |token|
          if token.type == :when
            when_statements << token
          else
            else_statement = token
          end
        end
      end

      return Token::CaseToken.new(
        :type      => :case,
        :statement => statement,
        :else      => else_statement,
        :when      => when_statements.reverse,
        :line      => line,
        :column    => col,
        :code      => source
      )
    end

    ##
    # Called when a `when` statement is found.
    #
    # @param  [Array] statement Array of statements to evaluate.
    # @param  [Array] body Array containing the tokens of the statement's body.
    # @param  [Array] list The list of `when` tokens.
    # @return [Array]
    #
    def on_when(statement, body, list)
      source = code(statement[0].line)
      col    = calculate_column(source, 'when')

      token = Token::StatementToken.new(
        :type      => :when,
        :statement => statement,
        :value     => body,
        :line      => statement[0].line,
        :column    => col,
        :code      => source
      )

      unless list.is_a?(Array)
        list = [list]
      end

      list << token
    end

    ##
    # Called when a unless statement is found.
    #
    # @param [RubyLint::Token::Token] statement The statement to evaluate.
    # @param [Array] body The body of the unless statement.
    # @param [RubyLint::Token::StatementToken] else_token An optional else
    #  statement.
    # @return [RubyLint::Token::StatementToken]
    #
    def on_unless(statement, body, else_token)
      source = code(statement.line)
      col    = calculate_column(source, 'unless')

      return Token::StatementToken.new(
        :type      => :unless,
        :statement => statement,
        :else      => else_token,
        :value     => body,
        :line      => statement.line,
        :column    => col,
        :code      => source
      )
    end

    ##
    # Called when an until statement is found.
    #
    # @see RubyLint::Parser#on_unless
    #
    def on_until(statement, body)
      source = code(statement.line)
      col    = calculate_column(source, 'until')

      return Token::StatementToken.new(
        :type      => :until,
        :statement => statement,
        :value     => body,
        :line      => statement.line,
        :column    => col,
        :code      => source
      )
    end

    ##
    # Called when a call to `defined?()` is found.
    #
    # @param  [RubyLint::Token::Token] token The token which is being checked.
    # @return [RubyLint::Token::StatementToken]
    #
    def on_defined(token)
      return Token::KeywordToken.new(
        :name       => 'defined?',
        :parameters => [token],
        :line       => token.line,
        :column     => token.column,
        :code       => token.code
      )
    end

    ##
    # Called when a call to `super` without parameters is found.
    #
    # @return [RubyLint::Token::MethodToken]
    #
    def on_zsuper
      return Token::KeywordToken.new(
        :name   => 'super',
        :line   => lineno,
        :column => column,
        :code   => code(lineno)
      )
    end

    ##
    # Called when a call to `super` with parameters is found.
    #
    # @param  [Array] params An array of parameters passed to the keyword.
    # @return [RubyLint::Token::KeywordToken]
    #
    def on_super(params)
      return Token::KeywordToken.new(
        :name       => 'super',
        :parameters => params,
        :line       => lineno,
        :column     => column,
        :code       => code(lineno)
      )
    end

    ##
    # Called when a variable is referenced.
    #
    # @param  [RubyLint::Token::Token] variable The variable that was referenced.
    # @return [RubyLint::Token::VariableToken]
    #
    def on_var_ref(variable)
      return Token::VariableToken.new(
        :line   => variable.line,
        :column => variable.column,
        :name   => variable.value,
        :type   => variable.type,
        :code   => code(variable.line)
      )
    end

    ##
    # Called when a constant path reference is found.
    #
    # @param  [Array] segments The path segments.
    # @return [Array]
    #
    def on_const_path_ref(*segments)
      return Token::VariableToken.new(
        :name   => segments.map { |t| t.name }.flatten,
        :type   => :constant_path,
        :line   => segments[0].line,
        :column => segments[0].column,
        :code   => code(segments[-1].line)
      )
    end

    ##
    # Called when a constant path is assigned.
    #
    # @see RubyLint::Parser#on_const_path_ref
    #
    def on_const_path_field(*segments)
      return on_const_path_ref(*segments)
    end

    ##
    # Called when a new method is defined.
    #
    # @param [RubyLint::Token::Token] name Token containing details about the
    #  method name.
    # @param [RubyLint::Token::ParametersToken] params Token containing details
    #  about the method parameters.
    # @param [Array] body Array containing the tokens of the method's body.
    # @return [RubyLint::Token::MethodDefinitionToken]
    #
    def on_def(name, params, body)
      body = [body] unless body.is_a?(Array)

      return Token::MethodDefinitionToken.new(
        :name       => name.value,
        :line       => name.line,
        :column     => name.column,
        :parameters => params,
        :visibility => @visibility,
        :value      => body.select { |t| !t.nil? },
        :code       => code(name.line)
      )
    end

    ##
    # Called when a method is defined on a specific constant/location
    # (e.g. `self`).
    #
    # @param [RubyLint::Token::Token] receiver The object that the method was
    #  defined on.
    # @param [RubyLint::Token::Token] operator The operator that was used to
    #  separate the receiver and method name.
    # @param [RubyLint::Token::Token] name The name of the method.
    # @param [RubyLint::Token::ParametersToken] params The method parameters.
    # @param [Array] body The body of the method.
    # @return [RubyLint::Token::MethodDefinitionToken]
    #
    def on_defs(receiver, operator, name, params, body)
      token          = on_def(name, params, body)
      token.receiver = receiver
      token.operator = operator

      return token
    end

    ##
    # Called when a set of method parameters is found. The order of the `args`
    # parameter is the following:
    #
    # * 0: array of required parameters
    # * 1: array of optional parameters
    # * 2: the rest parameter (if any)
    # * 3: array of "more" parameters (parameters set after the rest parameter)
    # * 4: the block parameter (if any)
    #
    # @param  [Array] args Array containing all the passed method parameters.
    # @return [RubyLint::Token::ParametersToken]
    #
    def on_params(*args)
      # Convert all the arguments from regular Token instances to VariableToken
      # instances.
      args.each_with_index do |arg, index|
        # Required, optional and more parameters.
        if arg.is_a?(Array)
          args[index] = arg.map do |token|
            value = nil

            if token.is_a?(Array)
              value = token[1]
              token = token[0]
            end

            Token::VariableToken.new(
              :name   => token.value,
              :value  => value,
              :line   => token.line,
              :column => token.column,
              :type   => token.type,
              :code   => code(token.line)
            )
          end
        # Rest and block parameters.
        elsif !arg.nil?
          args[index] = Token::VariableToken.new(
            :name   => arg.value,
            :line   => arg.line,
            :column => arg.column,
            :type   => arg.type,
            :code   => code(arg.line)
          )
        end
      end

      return Token::ParametersToken.new(
        :value    => args[0],
        :optional => args[1],
        :rest     => args[2],
        :more     => args[3],
        :block    => args[4]
      )
    end

    ##
    # Called when a method call using parenthesis is found.
    #
    # @param [RubyLint::Token::Token] name The name of the method that was called.
    # @param [Array] params The parameters of the method call.
    # @return [RubyLint::Token::MethodToken]
    #
    def on_method_add_arg(name, params)
      if name.class == RubyLint::Token::MethodToken
        name.parameters = params

        return name
      end

      return Token::MethodToken.new(
        :name       => name.value,
        :parameters => params,
        :line       => name.line,
        :column     => name.column,
        :code       => code(name.line)
      )
    end

    ##
    # Called when a block is passed to a method call.
    #
    # @param [RubyLint::Token::MethodToken] method Token class for the method that
    #  the block is passed to.
    # @param [RubyLint::Token::BlockToken] block The block that was passed to the
    #  method.
    # @return [RubyLint::Token::MethodToken]
    #
    def on_method_add_block(method, block)
      method.block = block

      return method
    end

    ##
    # Called when a class declaration is found.
    #
    # @param  [Array|RubyLint::Token::Token] name The name of the class.
    # @param  [Array|NilClass] parent The name of the parent class.
    # @param  [Array] body The body of the class.
    # @return [RubyLint::Token::ClassToken]
    #
    def on_class(name, parent, body)
      name_segments   = name.name.is_a?(Array) ? name.name : [name.name]
      parent_segments = []

      if parent
        parent_segments = parent.name.is_a?(Array) ? parent.name : [parent.name]
      end

      body = body.is_a?(Array) ? body.flatten.select { |t| !t.nil? } : []

      @visibility = DEFAULT_VISIBILITY

      return Token::ClassToken.new(
        :name   => name_segments,
        :parent => parent_segments,
        :type   => :class,
        :value  => body,
        :line   => name.line,
        :column => name.column,
        :code   => name.code
      )
    end

    ##
    # Called when a set of class methods are added using a `class << self`
    # block.
    #
    # @param [RubyLint::Token::VariableToken] receiver The receiver for all the
    #  methods.
    # @param  [Array] value The body of the block.
    # @return [Array]
    #
    def on_sclass(receiver, value)
      value.each_with_index do |token, index|
        if token.respond_to?(:receiver)
          token.receiver = receiver
        end

        value[index] = token
      end

      return value
    end

    ##
    # Called when a module definition is found.
    #
    # @param [RubyLint::Token::Token|Array] name The name of the module, either a
    #  single token class or an array of token classes.
    # @param [Array|NilClass] body The body of the module.
    # @return [RubyLint::Token::Token]
    #
    def on_module(name, body)
      name_segments = name.name.is_a?(Array) ? name.name : [name.name]

      return Token::Token.new(
        :type   => :module,
        :name   => name_segments,
        :value  => body,
        :line   => name.line,
        :column => name.column,
        :code   => name.code
      )
    end

    ##
    # Called when a method call without parenthesis was found.
    #
    # @see RubyLint::Parser#on_method_add_arg
    #
    def on_command(name, params)
      return on_method_add_arg(name, params)
    end

    ##
    # Called when a method was invoked on an object.
    #
    # @param [RubyLint::Token::Token] receiver The object that the method was
    #  invoked on.
    # @param [Symbol] operator The operator that was used to separate the
    #  receiver and method name.
    # @param [RubyLint::Token::Token] name Token containing details about the
    #  method name.
    # @return [RubyLint::Token::MethodToken]
    #
    def on_call(receiver, operator, name)
      return Token::MethodToken.new(
        :name     => name.value,
        :line     => name.line,
        :column   => name.column,
        :receiver => receiver,
        :operator => operator,
        :code     => code(name.line)
      )
    end

    ##
    # Called when a method was invoked on an object without using parenthesis.
    #
    # @see RubyLint::Parser#on_call
    # @param  [Array] params The parameters passed to the method.
    # @return [RubyLint::Token::MethodToken]
    #
    def on_command_call(receiver, operator, name, params)
      return Token::MethodToken.new(
        :name       => name.value,
        :line       => name.line,
        :column     => name.column,
        :receiver   => receiver,
        :operator   => operator,
        :parameters => params,
        :code       => code(name.line)
      )
    end

    private

    ##
    # Returns a string containing the code for the specified line number.
    #
    # @param  [Fixnum|Bignum] line The line number.
    # @return [String]
    #
    def code(line)
      return @lines[line - 1]
    end

    ##
    # Calculates the column position based on a given line and a stop string.
    #
    # @param [String] line The line of code to use for calculating the column
    #  number.
    # @param [String] stop The string that indicates the start of the token.
    # @return [Fixnum]
    #
    def calculate_column(line, stop)
      matches = line.match(/^(.+)#{stop}/)
      number  = 0

      if matches and matches[1]
        number = matches[1].to_i
      end

      return number
    end
  end # Parser
end # RubyLint

module Rlint
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
      :paren,
      :mrhs_new_from_args,
      :blockarg,
      :rest_param,
      :arg_paren,
      :block_var,
      :const_ref,
      :top_const_ref
    ]

    ##
    # Array of events of which the callback method should simply return nil.
    #
    # @return [Array]
    #
    RETURN_NIL_EVENTS = [:void_stmt]

    ##
    # Array of event names that should return an instance of
    # {Rlint::Token::MethodToken}.
    #
    # @return [Array]
    #
    RETURN_METHOD_EVENTS = [:fcall, :vcall]

    ##
    # Array containing the names of various event callbacks that should return
    # a token class containing details about a single line statement.
    #
    # @return [Array]
    #
    MOD_STATEMENT_EVENTS = [:while_mod, :if_mod, :unless_mod, :until_mod]

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

    # Return an Rlint::Token::Token instance for each scanner event instead of
    # an array with multiple indexes.
    SCANNER_EVENTS.each do |event|
      define_method("on_#{event}") do |token|
        return Token::Token.new(
          :name   => token,
          :type   => event,
          :value  => token,
          :line   => lineno,
          :column => column
        )
      end
    end

    RETURN_FIRST_ARG_EVENTS.each do |event|
      define_method("on_#{event}") do |*args|
        return args[0]
      end
    end

    RETURN_NIL_EVENTS.each do |event|
      define_method("on_#{event}") do |*args|
        return nil
      end
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
          :value  => token.name
        )
      end
    end

    MOD_STATEMENT_EVENTS.each do |event|
      define_method("on_#{event}") do |statement, value|
        value = [value] unless value.is_a?(Array)

        return Token::StatementToken.new(
          :type      => event,
          :statement => statement,
          :value     => value,
          :line      => lineno,
          :column    => column
        )
      end
    end

    ##
    # Creates a new instance of the parser and pre-defines various instance
    # variables.
    #
    # @see Ripper::SexpBuilderPP#initialize
    #
    def initialize(*args)
      super

      @visibility = DEFAULT_VISIBILITY
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
      values ||= []

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
    # Called when a value is assigned to an array index.
    #
    # @param [Rlint::Token::Token] array The array that was referenced.
    # @param [Rlint::Token::Token] index The index of the array that was
    #  referenced.
    # @return [Rlint::Token::Token]
    #
    def on_aref_field(array, index)
      array.key = index

      return Token::AssignmentToken.new(
        :receiver => array,
        :line     => lineno,
        :column   => column,
        :type     => array.type
      )
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
    # Called when a bare Hash is found. A bare Hash is a hash that's declared
    # without the curly braces.
    #
    # @see Rlint::Parser#on_hash
    #
    def on_bare_assoc_hash(pairs)
      return on_hash(pairs)
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
    # Called when a block is created using curly braces.
    #
    # @param [Rlint::Token::ParametersToken] params The parameters of the
    #  block.
    # @param  [Array] body Array containing the tokens of the block.
    # @return [Rlint::Token::BlockToken]
    #
    def on_brace_block(params, body)
      return Token::BlockToken.new(
        :parameters => params,
        :value      => body,
        :line       => lineno,
        :column     => column,
        :type       => :brace_block
      )
    end

    ##
    # Called when a block is created using the do/end statements.
    #
    # @see Rlint::Parser#on_brace_block
    #
    def on_do_block(params, body)
      token      = on_brace_block(params, body)
      token.type = :do_block

      return token
    end

    ##
    # Called when a lambda is found.
    #
    # @see Rlint::Parser#on_brace_block
    #
    def on_lambda(params, body)
      token      = on_brace_block(params, body)
      token.type = :lambda

      return token
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
    # Called when a regular expression is found.
    #
    # @param [Array] regexp The regular expression's value.
    # @param [Rlint::Token::Token] modes The modes of the regular expression.
    # @return [Rlint::Token::RegexpToken]
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
        :modes  => modes_array
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
      if variable.class == Rlint::Token::AssignmentToken
        variable.value = value

        return variable
      end

      return Token::AssignmentToken.new(
        :line   => variable.line,
        :column => variable.column,
        :name   => variable.value,
        :type   => variable.type,
        :value  => value
      )
    end

    ##
    # Called when a value is assigned to an object attribute.
    #
    # @param [Rlint::Token::VariableToken] receiver The receiver of the
    #  assignment.
    # @param [Symbol] operator The operator that was used to separate the
    #  object and attribute.
    # @param [Rlint::Token::Token] attribute The attribute to which the value
    #  is assigned.
    # @return [Rlint::Token::VariableToken]
    #
    def on_field(receiver, operator, attribute)
      return Token::AssignmentToken.new(
        :name     => attribute.value,
        :line     => attribute.line,
        :column   => attribute.column,
        :type     => attribute.type,
        :receiver => receiver,
        :operator => operator
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
        :line   => lineno,
        :column => column
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
        :type   => :return,
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
        :type      => :while,
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
    #
    # pry_binding
    # @param  [Rlint::Token::Token] enumerable The enumerable to iterate.
    # @param  [Array] value The body of the for loop.
    # @return [Rlint::Token::StatementToken]
    #
    def on_for(variables, enumerable, value)
      return Token::StatementToken.new(
        :type      => :for,
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
    # @return [Rlint::Token::StatementToken]
    #
    def on_if(statement, value, rest)
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
        :type   => :else,
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
        :type      => :elsif,
        :statement => statement,
        :value     => value,
        :line      => lineno,
        :column    => column
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
    # @param [Rlint::Token::StatementToken] else_statement The else statement
    #  of the block.
    # @param [Rlint::Token::StatementToken] ensure_statement The ensure
    #  statement of the block.
    # @return [Rlint::Token::BeginRescueToken]
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
        :type      => :rescue,
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
    # Called when a single line rescue statement (in the form of `[VALUE]
    # rescue [RESCUE VALUE]`) is found.
    #
    # @param [Rlint::Token::Token|Array] value The body of the begin/rescue
    #  statement.
    # @param [Rlint::Token::Token] statement The statement to evaluate when the
    #  data in `value` raised an exception.
    # @return [Rlint::Token::BeginRescueToken]
    #
    def on_rescue_mod(value, statement)
      value     = [value]     unless value.is_a?(Array)
      statement = [statement] unless statement.is_a?(Array)

      return Token::BeginRescueToken.new(
        :type   => :rescue_mod,
        :rescue => statement,
        :value  => value,
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when an ensure statement is found.
    #
    # @param  [Array] value The value of the statement.
    # @return [Rlint::Token::StatementToken]
    #
    def on_ensure(value)
      return Token::StatementToken.new(
        :type   => :ensure,
        :value  => value,
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called for an entire case/when/else block.
    #
    # @param [Rlint::Token::Token] statement The statement of the `case`
    #  statement itself.
    # @param [Array] list Array containing the various when statements and
    #  optionally an else statement.
    # @return [Rlint::Token::CaseToken]
    #
    def on_case(statement, list)
      when_statements = []
      else_statement  = nil

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
        :line      => statement.line,
        :column    => statement.column
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
      token = Token::StatementToken.new(
        :type      => :when,
        :statement => statement,
        :value     => body,
        :line      => lineno,
        :column    => column
      )

      unless list.is_a?(Array)
        list = [list]
      end

      list << token
    end

    ##
    # Called when a unless statement is found.
    #
    # @param [Rlint::Token::Token] statement The statement to evaluate.
    # @param [Array] body The body of the unless statement.
    # @param [Rlint::Token::StatementToken] else_token An optional else
    #  statement.
    # @return [Rlint::Token::StatementToken]
    #
    def on_unless(statement, body, else_token)
      return Token::StatementToken.new(
        :type      => :unless,
        :statement => statement,
        :else      => else_token,
        :value     => body,
        :line      => lineno,
        :column    => column
      )
    end

    ##
    # Called when an until statement is found.
    #
    # @see Rlint::Parser#on_unless
    #
    def on_until(statement, body)
      return Token::StatementToken.new(
        :type      => :until,
        :statement => statement,
        :value     => body,
        :line      => lineno,
        :column    => column
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
        :line   => variable.line,
        :column => variable.column,
        :name   => variable.value,
        :type   => variable.type
      )
    end

    ##
    # Called when a constant path reference is found.
    #
    # @param  [Array] segments The path segments.
    # @return [Array]
    #
    def on_const_path_ref(*segments)
      return segments
    end

    ##
    # Called when a new method is defined.
    #
    # @param [Rlint::Token::Token] name Token containing details about the
    #  method name.
    # @param [Rlint::Token::ParametersToken] params Token containing details
    #  about the method parameters.
    # @param [Array] body Array containing the tokens of the method's body.
    # @return [Rlint::Token::MethodDefinitionToken]
    #
    def on_def(name, params, body)
      return Token::MethodDefinitionToken.new(
        :name       => name.value,
        :line       => name.line,
        :column     => name.column,
        :type       => :instance_method,
        :parameters => params,
        :visibility => @visibility,
        :value      => body.select { |t| !t.nil? }
      )
    end

    ##
    # Called when a method is defined on a specific constant/location
    # (e.g. `self`).
    #
    # @param [Rlint::Token::Token] receiver The object that the method was
    #  defined on.
    # @param [Rlint::Token::Token] operator The operator that was used to
    #  separate the receiver and method name.
    # @param [Rlint::Token::Token] name The name of the method.
    # @param [Rlint::Token::ParametersToken] params The method parameters.
    # @param [Array] body The body of the method.
    # @return [Rlint::Token::MethodDefinitionToken]
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
    # @return [Rlint::Token::ParametersToken]
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
              :type   => token.type
            )
          end
        # Rest and block parameters.
        elsif !arg.nil?
          args[index] = Token::VariableToken.new(
            :name   => arg.value,
            :line   => arg.line,
            :column => arg.column,
            :type   => arg.type
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
    # @param [Rlint::Token::Token] name The name of the method that was called.
    # @param [Array] params The parameters of the method call.
    # @return [Rlint::Token::MethodToken]
    #
    def on_method_add_arg(name, params)
      if name.class == Rlint::Token::MethodToken
        name.parameters = params

        return name
      end

      return Token::MethodToken.new(
        :name       => name.value,
        :parameters => params,
        :line       => name.line,
        :column     => name.column
      )
    end

    ##
    # Called when a block is passed to a method call.
    #
    # @param [Rlint::Token::MethodToken] method Token class for the method that
    #  the block is passed to.
    # @param [Rlint::Token::BlockToken] block The block that was passed to the
    #  method.
    # @return [Rlint::Token::MethodToken]
    #
    def on_method_add_block(method, block)
      method.block = block

      return method
    end

    ##
    # Called when a class declaration is found.
    #
    # @param  [Array|Rlint::Token::Token] name The name of the class.
    # @param  [Array|NilClass] parent The name of the parent class.
    # @param  [Array] body The body of the class.
    # @return [Rlint::Token::ClassToken]
    #
    def on_class(name, parent, body)
      line = lineno
      col  = column

      name_segments   = []
      parent_segments = []

      # Extract the name segments.
      if name.is_a?(Rlint::Token::Token)
        name_segments << name.name
        line          = name.line
        col           = name.column
      elsif name.is_a?(Array)
        name_segments = name.map { |t| t.name }
        line          = name[0].line
        col           = name[0].column
      end

      # Extract the name segments of the parent class.
      if parent.is_a?(Rlint::Token::Token)
        parent_segments << parent.name
      elsif parent.is_a?(Array)
        parent_segments = parent.map { |t| t.name }
      end

      @visibility = DEFAULT_VISIBILITY

      return Token::ClassToken.new(
        :name   => name_segments,
        :parent => parent_segments,
        :type   => :class,
        :value  => (body || []).select { |t| !t.nil? },
        :line   => line,
        :column => col
      )
    end

    ##
    # Called when a module definition is found.
    #
    # @param [Rlint::Token::Token|Array] name The name of the module, either a
    #  single token class or an array of token classes.
    # @param [Array|NilClass] body The body of the module.
    # @return [Rlint::Token::Token]
    #
    def on_module(name, body)
      line          = lineno
      col           = column
      name_segments = []

      if name.is_a?(Rlint::Token::Token)
        line = name.line
        col  = name.column

        name_segments << name.name
      elsif name.is_a?(Array)
        line          = name[0].line
        col           = name[0].column
        name_segments = name.map { |t| t.name }
      end

      return Token::Token.new(
        :type   => :module,
        :name   => name_segments,
        :value  => body,
        :line   => line,
        :column => col
      )
    end

    ##
    # Called when a method call without parenthesis was found.
    #
    # @see Rlint::Parser#on_method_add_arg
    #
    def on_command(name, params)
      return on_method_add_arg(name, params)
    end

    ##
    # Called when a method was invoked on an object.
    #
    # @param [Rlint::Token::Token] receiver The object that the method was
    #  invoked on.
    # @param [Symbol] operator The operator that was used to separate the
    #  receiver and method name.
    # @param [Rlint::Token::Token] name Token containing details about the
    #  method name.
    # @return [Rlint::Token::MethodToken]
    #
    def on_call(receiver, operator, name)
      return Token::MethodToken.new(
        :name     => name.value,
        :line     => name.line,
        :column   => name.column,
        :receiver => receiver,
        :operator => operator
      )
    end

    ##
    # Called when a method was invoked on an object without using parenthesis.
    #
    # @see Rlint::Parser#on_call
    # @param  [Array] params The parameters passed to the method.
    # @return [Rlint::Token::MethodToken]
    #
    def on_command_call(receiver, operator, name, params)
      return Token::MethodToken.new(
        :name       => name.value,
        :line       => name.line,
        :column     => name.column,
        :receiver   => receiver,
        :operator   => operator,
        :parameters => params
      )
    end
  end # Parser
end # Rlint

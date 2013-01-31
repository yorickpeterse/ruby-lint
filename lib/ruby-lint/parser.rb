module RubyLint
  ##
  # {RubyLint::Parser} parses Ruby code and returns a clean and usable AST
  # instead of the rather raw AST returned by Ripper itself. Each node in the
  # AST is an instance of {RubyLint::Node}.
  #
  # ## Example
  #
  #     RubyLint::Parser.new('[10, 20]').parse
  #       # => (root (array (integer "10") (integer "20")))
  #
  class Parser < Ripper::SexpBuilderPP
    ##
    # Hash containing various Ripper types and the RubyLint types to use
    # instead.
    #
    # @return [Hash]
    #
    TYPE_MAPPING = {
      :ident           => :identifier,
      :gvar            => :global_variable,
      :ivar            => :instance_variable,
      :cvar            => :class_variable,
      :const           => :constant,
      :int             => :integer,
      :float           => :float,
      :tstring_content => :string,
      :label           => :symbol,
      :kw              => :keyword
    }

    ##
    # Array containing all the event names of which the methods should simply
    # returned the passed argument.
    #
    # @return [Array]
    #
    RETURN_FIRST_ARG_EVENTS = [
      :arg_paren,
      :assoclist_from_args,
      :begin,
      :block_var,
      :blockarg,
      :const_ref,
      :mlhs_paren,
      :mrhs_new_from_args,
      :rest_param,
      :symbol_literal,
      :top_const_ref,
      :var_field,
      :paren
    ]

    ##
    # Array of event names that should return an instance of
    # {RubyLint::Token::MethodToken}.
    #
    # @return [Array]
    #
    RETURN_METHOD_EVENTS = [:fcall, :vcall]

    ##
    # List of modified statements, used to dynamically define the callback
    # methods.
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
    # Collection of Ripper events of which the callbacks all share similar
    # code. The corresponding methods are defined on the fly.
    #
    # @return [Hash]
    #
    BASIC_EVENTS = {
      :bodystmt         => :body,
      :class            => :class,
      :module           => :module,
      :binary           => :binary,
      :unary            => :unary,
      :return           => :return,
      :else             => :else,
      :unless           => :unless,
      :until            => :until,
      :while            => :while,
      :const_path_ref   => :constant_path,
      :dot2             => :dot2,
      :dot3             => :dot3,
      :assoc_new        => :key_value,
      :hash             => :hash,
      :aref             => :aref,
      :string_concat    => :string_concat,
      :string_embexpr   => :embed,
      :begin            => :begin,
      :ensure           => :ensure,
      :defined          => :defined,
      :super            => :super,
      :yield0           => :yield,
      :yield            => :yield,
      :const_path_field => :constant_path,
      :sclass           => :sclass
    }

    ##
    # Hash containing various Ripper event names and the methods these events
    # should execute.
    #
    # @return [Hash]
    #
    EVENT_ALIASES = {
      :dyna_symbol     => :on_symbol,
      :aref_field      => :on_aref,
      :bare_assoc_hash => :on_hash,
      :do_block        => :on_brace_block
    }

    ##
    # Array of events (the ones used by ruby-lint) of which the child nodes
    # should be stripped of `nil` values.
    #
    # @return [Array]
    #
    COMPACT_EVENT_ARGS = [:body, :unless]

    ##
    # Array of events of which the first callback parameter should be used for
    # the child nodes of a callback.
    #
    # @return [Array]
    #
    UNPACK_EVENT_ARGS = [:else, :hash, :embed, :ensure]

    ##
    # Hash containing parameter indexes and the node types.
    #
    # @return [Hash]
    #
    PARAMETER_INDEX_TYPES = {
      0 => :argument,
      1 => :optional_argument,
      2 => :rest_argument,
      3 => :more_argument,
      4 => :block_argument
    }

    SCANNER_EVENTS.each do |type|
      define_method("on_#{type}") do |value|
        return Node.new(readable_type_name(type), [value], metadata)
      end
    end

    RETURN_FIRST_ARG_EVENTS.each do |event|
      define_method("on_#{event}") { |*args| return args[0] }
    end

    RETURN_METHOD_EVENTS.each do |event|
      define_method("on_#{event}") do |node|
        return Node.new(
          :method,
          [node.children[0], on_params, nil, nil], metadata(node)
        )
      end
    end

    BASIC_EVENTS.each do |original, new|
      define_method("on_#{original}") do |*args|
        if COMPACT_EVENT_ARGS.include?(new)
          args = args.map { |arg| arg.compact rescue arg }.compact
        end

        args = args[0] if UNPACK_EVENT_ARGS.include?(new)

        return Node.new(new, args, metadata)
      end
    end

    MOD_STATEMENT_EVENTS.each do |mod, normal|
      define_method("on_#{mod}") do |statement, value|
        value = [value] unless value.is_a?(Array)

        return send("on_#{normal}", statement, value)
      end
    end

    EVENT_ALIASES.each do |event, method|
      define_method("on_#{event}") do |*args|
        return send(method, *args)
      end
    end

    ##
    # @see Ripper::SexpBuilderPP#initialize
    #
    def initialize(code, file = '(ruby-lint)', line = 1)
      super

      @file = file
    end

    ##
    # @return [NilClass]
    #
    def on_void_stmt
      return nil
    end

    ##
    # Called at the start of a Ruby program.
    #
    # @param  [Array] nodes The various nodes of the program.
    # @return [RubyLint::Node]
    #
    def on_program(nodes)
      nodes = [nodes] unless nodes.is_a?(Array)

      return Node.new(:root, nodes, :line => 1, :column => 0, :file => @file)
    end

    ##
    # @param [String] message The error message.
    # @raise [RubyLint::ParserError]
    #
    def on_parse_error(message)
      raise ParserError.new(message, lineno, column, @file)
    end

    ##
    # Called when a symbol is found.
    #
    # @param  [RubyLint::Node|Array] node The value of the symbol. This
    #  parameter is set to an Array when parsing code such as `:"hello"`.
    # @return [RubyLint::Node]
    #
    def on_symbol(node)
      node = node[0] if node.is_a?(Array)

      return Node.new(:symbol, node.children, metadata(node))
    end

    ##
    # @param  [Array] content The contents of the string.
    # @return [RubyLint::Node]
    #
    def on_string_literal(content)
      return content[1]
    end

    ##
    # @param  [Array] values The values of the array.
    # @return [RubyLint::Node]
    #
    def on_array(values)
      values ||= []
      children = values.flatten

      return Node.new(:array, children, metadata)
    end

    ##
    # @param  [Array] regexp Array containing the regular expression's body.
    # @return [RubyLint::Node] mode The mode for the regular expression.
    # @return [RubyLint::Node]
    #
    def on_regexp_literal(regexp, mode)
      return Node.new(:regexp, [regexp[0], mode], metadata)
    end

    ##
    # @param  [RubyLint::Node] params The parameters of the lamda.
    # @param  [Array] body The body of the lambda.
    # @return [RubyLint::Node]
    #
    def on_lambda(params, body)
      return on_brace_block(params, body).updated(:lambda)
    end

    ##
    # @param  [RubyLint::Node] params The parameters of the block.
    # @param  [Array] body The body of the block.
    # @return [RubyLint::Node]
    #
    def on_brace_block(params, body)
      return Node.new(:block, [params || on_params, on_bodystmt(body)], metadata)
    end

    ##
    # Called when a variable is assigned to a start (`*`).
    #
    # @param [Array|RubyLint::Node] left The variable(s) to the left of the
    #  star.
    # @param [Array|RubyLint::Node] right The variable(s) to the right of the
    #  star.
    # @return [RubyLint::Node]
    #
    def on_mlhs_add_star(left, right)
      if right
        left << right.updated(nil, [*right.children, true])
      # Add a placeholder for the expander token.
      else
        left << nil
      end

      return left
    end

    ##
    # @param [RubyLint::Node] variable The data to assign the value to.
    # @param [RubyLint::Node] value The value to assign.
    # @return [RubyLint::Node]
    #
    def on_assign(variable, value)
      variable = variable.updated(:local_variable) if variable.identifier?

      # When assigning values to array indexes or hash keys the value should
      # always be an array. This makes it easier to assign values without
      # having to check the type of data we're dealing with.
      if variable.type == :aref and !value.is_a?(Array)
        value = [value]
      end

      return Node.new(:assign, [variable, value], metadata(variable))
    end

    ##
    # Called when a conditional assignment is found.
    #
    # @see RubyLint::Parser#on_assign
    #
    def on_opassign(variable, operator, value)
      return on_assign(variable, value).updated(:op_assign)
    end

    ##
    # @param [Array] variables The variables that are being assigned.
    # @param [Array|RubyLint::Node] values The values to assign.
    # @return [RubyLint::Node]
    #
    def on_massign(variables, values)
      nodes     = []
      variables = variables.flatten
      before    = 0

      if values.is_a?(Node) and values.type == :array
        values = values.children.dup
      elsif !values.is_a?(Array)
        values = [values]
      end

      var_length = variables.length
      val_length = values.length

      variables.each_with_index do |variable, index|
        if !variable
          values.shift
          next
        end

        variable = variable.updated(:local_variable) if variable.identifier?

        # Extract the values for the expander variable based on the amount of
        # variables, values and the amount of variables that were assigned
        # before the expander.
        if variable.children[1]
          slice_length = val_length - (var_length - 1)

          value = Node.new(
            :array,
            values.slice!(index - before, slice_length),
            metadata(variable)
          )

          variable = variable.updated(nil, [variable.children[0]])
        else
          before += 1
          value   = values.shift
        end

        unless value
          value = Node.new(
            :keyword,
            ['nil'],
            metadata(variable)
          )
        end

        nodes << Node.new(:assign, [variable, value], metadata(variable))
      end

      return Node.new(:mass_assign, nodes, metadata)
    end

    ##
    # @param  [RubyLint::Node] variable The variable that was referenced.
    # @return [RubyLint::Node]
    #
    def on_var_ref(variable)
      variable = variable.updated(:local_variable) if variable.identifier?

      return variable
    end

    ##
    # @param [RubyLint::Node] object The object of the field.
    # @param [Symbol] operator The operator used to separate the object and
    #  field.
    # @param [RubyLint::Node] field The field that was referenced.
    # @return [RubyLint::Node]
    #
    def on_field(object, operator, field)
      return Node.new(:field, [object, field], metadata)
    end

    ##
    # Called when a method without parenthesis is called.
    #
    # @see RubyLint::Parser#on_method_add_arg
    #
    def on_command(name, params)
      return Node.new(
        :method,
        [name.children[0], on_params(params), nil, nil],
        metadata(name)
      )
    end

    ##
    # Called when a method is invoked on an object.
    #
    # @param  [RubyLint::Node] object The object the method was invoked on.
    # @param  [Symbol] operator The operator used for the method call.
    # @param  [RubyLint::Node] name The name of the method.
    # @return [RubyLint::Node]
    #
    def on_call(object, operator, name)
      return Node.new(
        :method,
        [name.children[0], on_params, nil, object],
        metadata(name)
      )
    end

    ##
    # Called when a method is invoked on an object without the use of
    # parenthesis.
    #
    # @see RubyLint::Parser#on_call
    #
    def on_command_call(object, operator, name, params)
      node        = on_call(object, operator, name)
      children    = node.children.dup
      children[1] = on_params(params)

      return node.updated(nil, children)
    end

    ##
    # @param  [RubyLint::Node] method The method that is called.
    # @param  [RubyLint::Node|Array] params Array of parameters passed to the
    #  method.
    # @return [RubyLint::Node]
    #
    def on_method_add_arg(method, params)
      children = method.children.dup

      if !params.is_a?(Array)
        children[1] = params
      end

      return method.updated(nil, children)
    end

    ##
    # @param [Mixed] left
    # @param [Mixed] right
    #
    def on_args_add_block(left, right)
      return on_params(left, nil, nil, nil, right)
    end

    ##
    # @param  [RubyLint::Node] method The method node.
    # @param  [RubyLint::Node] block The block passed to the method.
    # @return [RubyLint::Node]
    #
    def on_method_add_block(method, block)
      children        = method.children.dup
      index           = method.type == :super ? 1 : -2
      children[index] = block

      return method.updated(nil, children)
    end

    ##
    # @param  [RubyLint::Node] name The name of the method.
    # @param  [Array] params The parameters of the method.
    # @param  [Array] body The body of the method.
    # @return [RubyLint::Node]
    #
    def on_def(name, params, body)
      return Node.new(
        :method_definition,
        [name.children[0], params, nil, body],
        metadata(name)
      )
    end

    ##
    # Called when a method definition using a receiver is found.
    #
    # @see RubyLint::Parser#on_def
    #
    def on_defs(receiver, operator, name, params, body)
      return Node.new(
        :method_definition,
        [name.children[0], params, receiver, body],
        metadata(name)
      )
    end

    ##
    # Called when a set of method parameters if found.
    #
    # @param  [Array] params The specified parameters.
    # @return [Array]
    #
    def on_params(*params)
      if params[0].is_a?(Node) and params[0].type == :arguments
        return params[0]
      end

      if params[1]
        params[1] = remap_optional_arguments(params[1])
      end

      params = group_arguments(params)

      return Node.new(:arguments, params, metadata)
    end

    ##
    # @param [RubyLint::Node] statement The statement to evaluate.
    # @param [Array] body The body of the if statement.
    # @param [Array|NilClass] rest The rest of the statement, includes the
    #  elsif and else statements.
    # @return [RubyLint::Node]
    #
    def on_if(statement, body, rest = nil)
      elsif_stmts = []
      else_stmt   = nil

      rest ||= []
      rest   = [rest] unless rest.is_a?(Array)

      rest.compact.each do |node|
        if node.type == :else
          else_stmt = node
        else
          elsif_stmts << node
        end
      end

      return Node.new(
        :if,
        [statement, body, elsif_stmts.reverse, else_stmt],
        metadata
      )
    end

    ##
    # Called when a ternary operator is found.
    #
    # @param [RubyLint::Node] statement The statement to evaluate.
    # @param [RubyLint::Node] true_val The value to use when the statement
    #  evaluates to true.
    # @param [RubyLint::Node] false_val The value to use when the statement
    #  evaluates to false.
    # @return [RubyLint::Node]
    #
    def on_ifop(statement, true_val, false_val)
      return Node.new(
        :ternary,
        [statement, true_val, false_val],
        metadata
      )
    end

    ##
    # @param [RubyLint::Node] statement The statement to evaluate.
    # @param [Array] body The body of the statement.
    # @param [Array] list Array containing the rest of the if statement.
    # @return [RubyLint::Node]
    #
    def on_elsif(statement, body, list)
      node = Node.new(:elsif, [statement, body], metadata)
      list = [list] unless list.is_a?(Array)

      list << node
    end

    ##
    # @param [Array|RubyLint::Node] variables The variables to create for each
    #  iteration.
    # @param [RubyLint::Node] enumerator The value to iterate over.
    # @param [Array] body The body of the statement.
    # @return [RubyLint::Node]
    #
    def on_for(variables, enumerator, body)
      variables = [variables] unless variables.is_a?(Array)
      variables.map! { |n| n.updated(:local_variable) if n.identifier? }

      return Node.new(
        :for,
        [variables, enumerator, body],
        metadata(variables[0])
      )
    end

    ##
    # @param [Array] exceptions A list of exceptions to catch.
    # @param [RubyLint::Variable|NilClass] variable The variable to store
    #  information in about the exception.
    # @param [Array] body The body of the statement.
    # @param [Array] list Array containing all the rescue, else and ensure
    #  statements.
    # @return [RubyLint::Node]
    #
    def on_rescue(exceptions, variable, body, list)
      list = list.is_a?(Array) ? list : [list].compact

      if variable and variable.identifier?
        variable = variable.updated(:local_variable)
      end

      list.unshift(
        Node.new(:rescue, [nil, exceptions, variable, body], metadata)
      )
    end

    ##
    # @param [RubyLint::Node] statement The statement for which to catch
    #  errors.
    # @param [RubyLint::Node] body The code to execute when an error was
    #  raised.
    # @return [RubyLint::Node]
    #
    def on_rescue_mod(statement, body)
      return Node.new(:rescue, [statement, nil, nil, body], metadata)
    end

    ##
    # @param [RubyLint::Node] statement The statement to evaluate.
    # @param [Array] body The body of the case block such as all the when
    #  statements.
    # @return [RubyLint::Node]
    #
    def on_case(statement, body)
      when_statements = []
      else_statement  = nil

      body.each do |node|
        if node.type == :when
          when_statements << node
        else
          else_statement = node
        end
      end

      return Node.new(
        :case,
        [statement, when_statements, else_statement],
        metadata
      )
    end

    ##
    # @param [RubyLint::Node|Array] values The values to match on.
    # @param [RubyLint::Node] body The body of the statement.
    # @param [RubyLint::Node|Array] list The list of other when and else nodes.
    # @return [RubyLint::Node]
    #
    def on_when(values, body, list)
      list   = [list].compact unless list.is_a?(Array)
      values = [values] unless values.is_a?(Array)

      node = Node.new(:when, [values, body], metadata)

      list.unshift(node)
    end

    ##
    # @return [RubyLint::Node]
    #
    def on_zsuper
      return on_super(nil)
    end

    private

    ##
    # Returns a more readable version of a Ripper type name.
    #
    # @param  [Symbol] type The type to convert.
    # @return [Symbol]
    #
    def readable_type_name(type)
      return TYPE_MAPPING.fetch(type, type)
    end

    ##
    # Returns a Hash containing metadata such as the line number and the file.
    #
    # @param [RubyLint::Node] node When set the line and column number will be
    #  extracted from this node.
    # @return [Hash]
    #
    def metadata(node = nil)
      line = node ? node.line   : lineno
      col  = node ? node.column : column

      return {:line => line, :column => col, :file => @file}
    end

    ##
    # Groups a set of parameters into nodes based on the indexes.
    #
    # @param [Array] nodes
    # @return [Array]
    #
    def group_arguments(nodes)
      new_nodes = []

      nodes.each_with_index do |node, index|
        if !node or (node.is_a?(Array) and node.empty?)
          next
        end

        new_nodes << convert_argument_node(node, index)
      end

      return new_nodes.flatten
    end

    ##
    # Remaps variable/value pairs of optional arguments into single nodes.
    #
    # @param [Array] nodes
    # @return [Array]
    #
    def remap_optional_arguments(nodes)
      return nodes.map do |node|
        node[0].updated(nil, [node[0].children[0], node[1]])
      end
    end

    ##
    # Converts a parameter node to a type based on its index.
    #
    # @param [RubyLint::Node|Array] node
    # @param [Numeric] index
    # @return [Mixed]
    #
    def convert_argument_node(node, index)
      if node.is_a?(Array)
        node = node.map { |n| convert_argument_node(n, index) }
      else
        if node.identifier?
          node = node.updated(:local_variable)
        end

        node = Node.new(PARAMETER_INDEX_TYPES[index], [node])
      end

      return node
    end
  end # Parser
end # RubyLint

module RubyLint
  ##
  # {RubyLint::Parser} uses Ripper to parse Ruby source code and turn it into
  # an AST. Instead of returning arrays (the Ripper default) this class uses
  # the various token classes such as {RubyLint::Token::Token} and
  # {RubyLint::Token::VariableToken}. It also takes care of a few more things
  # such as saving the associated line of code and setting method visibility.
  #
  # Parsing Ruby code requires two steps:
  #
  # 1. Create a new instance of this class and pass a string containing source
  #    code to the constructor method.
  # 2. Call the method {RubyLint::Parser#parse} and do something with the
  #    returned AST.
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
      :args_add_block,
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

    SCANNER_EVENTS.each do |type|
      define_method("on_#{type}") do |value|
        return Node.new(
          readable_type_name(type),
          [value],
          :line   => lineno,
          :column => column
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
      define_method("on_#{event}") do |node|
        return Node.new(
          :method,
          [node.children[0]],
          :line   => node.line,
          :column => node.column
        )
      end
    end

=begin
    MOD_STATEMENT_EVENTS.each do |ripper_event, ruby_lint_event|
      define_method("on_#{ripper_event}") do |statement, value|

      end
    end
=end

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
    end

    ##
    # Called at the start of a Ruby program.
    #
    # @param  [Array] nodes The various nodes of the program.
    # @return [RubyLint::Node]
    #
    def on_program(nodes)
      return Node.new(:root, nodes, :line => 1, :column => 0)
    end

    ##
    # Called when a symbol is found.
    #
    # @param  [RubyLint::Node|Array] token The value of the symbol. This
    #  parameter is set to an Array when parsing code such as `:"hello"`.
    # @return [RubyLint::Node]
    #
    def on_symbol(node)
      node = node[0] if node.is_a?(Array)

      return Node.new(
        :symbol,
        node.children,
        :line   => node.line,
        :column => node.column
      )
    end

    ##
    # Called when a symbol using quotes was found.
    #
    # @see RubyLint::Parser#on_symbol
    #
    def on_dyna_symbol(node)
      return on_symbol(node)
    end

    ##
    # Called when a String is found.
    #
    # @param  [Array] content The contents of the string.
    # @return [RubyLint::Node]
    #
    def on_string_literal(content)
      return content[1]
    end

    ##
    # Called when a string is concatenated using a backslash.
    #
    # @param  [Array] strings The strings being concatenated.
    # @return [RubyLint::Node]
    #
    def on_string_concat(*strings)
      return Node.new(
        :string_concat,
        strings,
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when an expression is embedded in a string.
    #
    # @param  [Array] exp The embedded expressions.
    # @return [RubyLint::Node]
    #
    def on_string_embexpr(exp)
      return Node.new(:embed, exp, :line => lineno, :column => column)
    end

    ##
    # Called when an array is found.
    #
    # @param  [Array] values The values of the array.
    # @return [RubyLint::Node]
    #
    def on_array(values)
      values ||= []
      children = values.flatten

      return Node.new(:array, children, :line => lineno, :column => column)
    end

    ##
    # Called when a reference to a particular Array index or Hash key is
    # found.
    #
    # @param  [RubyLint::Node] object The object that was accessed.
    # @param  [Array] indexes The indexes/keys that were accessed.
    # @return [RubyLint::Node]
    #
    def on_aref(object, indexes)
      return Node.new(
        :aref,
        [object, indexes],
        :line   => object.line,
        :column => object.column
      )
    end

    ##
    # Called when a value is assigned to an array index.
    #
    # @see RubyLint::Parser#on_aref
    #
    def on_aref_field(array, indexes)
      return on_aref(array, indexes)
    end

    ##
    # Called when a Hash is found.
    #
    # @param  [Array] pairs An array of key/value pairs of the hash.
    # @return [RubyLint::Node]
    #
    def on_hash(pairs)
      return Node.new(:hash, pairs, :line => lineno, :column => column)
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
    # @param  [RubyLint::Node] key The key of the pair.
    # @param  [RubyLint::Node] value The value of the pair.
    # @return [RubyLint::Node]
    #
    def on_assoc_new(key, value)
      return Node.new(
        :key_value,
        [key, value],
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when a Range is found.
    #
    # @param  [RubyLint::Node] start The start value of the range.
    # @param  [RubyLint::Node] stop The end value of the range.
    # @return [RubyLint::Node]
    #
    def on_dot2(start, stop)
      return Node.new(
        :dot2,
        [start, stop],
        :line   => start.line,
        :column => start.column
      )
    end

    ##
    # Called when a range using 3 dots is found.
    #
    # @see RubyLint::Parser#on_dot2
    #
    def on_dot3(start, stop)
      return Node.new(
        :dot3,
        [start, stop],
        :line   => start.line,
        :column => start.column
      )
    end

    ##
    # Called when a regular expression is found.
    #
    # @param  [Array] regexp Array containing the regular expression's body.
    # @return [RubyLint::Node] mode The mode for the regular expression.
    # @return [RubyLint::Node]
    #
    def on_regexp_literal(regexp, mode)
      regexp = regexp[0]

      return Node.new(
        :regexp,
        [regexp, mode],
        :line   => regexp.line,
        :column => regexp.column
      )
    end

    ##
    # Called when a lambda is found.
    #
    # @param  [Array] params The parameters of the lamda.
    # @param  [Array] body The body of the lambda.
    # @return [RubyLint::Node]
    #
    def on_lambda(params, body)
      return Node.new(
        :lambda,
        [params[0], body],
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when a block was created using curly braces.
    #
    # @param  [Array] params The parameters of the block.
    # @param  [Array] body The body of the block.
    # @return [RubyLint::Node]
    #
    def on_brace_block(params, body)
      return Node.new(
        :block,
        [params[0], body.compact],
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when a block was created using `do/end`.
    #
    # @see RubyLint::Parser#on_brace_block
    #
    def on_do_block(params, body)
      return on_brace_block(params, body)
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
    # Called when a value is assigned to a variable, array index, hash key or
    # object member.
    #
    # @param  [RubyLint::Node] assigned The data to assign the value to.
    # @param  [RubyLint::Node] value The value to assign.
    # @return [RubyLint::Node]
    #
    def on_assign(variable, value)
      variable = variable.updated(:local_variable) if variable.identifier?

      return Node.new(
        :assign,
        [variable, value],
        :line   => variable.line,
        :column => variable.column
      )
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
    # Called when multiple variables are assigned at the same time.
    #
    # @param  [Array] variables The variables that are being assigned.
    # @param  [Array|RubyLint::Node] values The values to assign.
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

        # If an expander is found the index for the value to assign to the
        # *next* variable should be determined. The value for expander will be
        # assigned later on.
        if variable.children[1]
          slice_length = val_length - (var_length - 1)

          value = Node.new(
            :array,
            values.slice!(index - before, slice_length),
            :line   => variable.line,
            :column => variable.column
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
            :line   => variable.line,
            :column => variable.column
          )
        end

        nodes << Node.new(
          :assign,
          [variable, value],
          :line   => variable.line,
          :column => variable.column
        )
      end

      return Node.new(:mass_assign, nodes, :line => lineno, :column => column)
    end

    ##
    # Called when a variable is referenced.
    #
    # @param  [RubyLint::Node] variable The variable that was referenced.
    # @return [RubyLint::Node]
    #
    def on_var_ref(variable)
      variable = variable.updated(:local_variable) if variable.identifier?

      return variable
    end

    ##
    # Called when a constant path (e.g. `Foo::Bar`) is found.
    #
    # @param  [Array] segments The segments of the constant path.
    # @return [RubyLint::Node]
    #
    def on_const_path_ref(*segments)
      return Node.new(
        :constant_path,
        segments,
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when a method without parenthesis is called.
    #
    # @see RubyLint::Parser#on_method_add_arg
    #
    def on_command(name, params)
      return Node.new(
        :method,
        [name.children[0], params],
        :line   => name.line,
        :column => name.column
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
        [name.children[0], [], nil, object],
        :line   => name.line,
        :column => name.column
      )
    end

    ##
    # Called when a method is called with a set of parameters.
    #
    # @param  [RubyLint::Node] method The method that is called.
    # @param  [Array] params Array of parameters passed to the method.
    # @return [RubyLint::Node]
    #
    def on_method_add_arg(method, params)
      children    = method.children.dup
      children[1] = params

      return method.updated(nil, children)
    end

    ##
    # Called when a method is called with a block.
    #
    # @param  [RubyLint::Node] method The method node.
    # @param  [RubyLint::Node] block The block passed to the method.
    # @return [RubyLint::Node]
    #
    def on_method_add_block(method, block)
      children    = method.children.dup
      children[2] = block

      return method.updated(nil, children)
    end

    ##
    # Called when a method definition is found.
    #
    # @param  [RubyLint::Node] name The name of the method.
    # @param  [Array] params The parameters of the method.
    # @param  [Array] body The body of the method.
    # @return [RubyLint::Node]
    #
    def on_def(name, params, body)
      return Node.new(
        :method_definition,
        [name.children[0], params || [], nil, body],
        :line   => name.line,
        :column => name.column
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
        [name.children[0], params || [], receiver, body],
        :line   => name.line,
        :column => name.column
      )
    end

    ##
    # Called when a body statement (e.g. the body of a method definition) is
    # found.
    #
    # @param  [Array] value The body of the statement.
    # @param  [Array] resc_stmt Array of `rescue` statement.
    # @param  [RubyLint::Node] else_stmt An optional `else` statement.
    # @param  [RubyLint::Node] ensure_stmt An optional `ensure` statement.
    # @return [RubyLint::Node]
    #
    def on_bodystmt(value, resc_stmt, else_stmt, ensure_stmt)
      return Node.new(
        :body,
        [value.compact, resc_stmt, else_stmt, ensure_stmt].compact,
        :line   => lineno,
        :column => column
      )
    end

    ##
    # Called when a method of method parameters is found.
    #
    # The order of parameters is the following:
    #
    # 1. required
    # 2. optional
    # 3. rest
    # 4. more
    # 5. block
    #
    # @param  [Array] params The specified parameters.
    # @return [Array]
    #
    def on_params(*params)
      params.map! do |group|
        if group.is_a?(Node)
          group.updated(:local_variable)

        # Parameter types of which multiple ones can be specified (e.g.
        # required parameters).
        elsif group.is_a?(Array)
          group.map do |param|
            if param.is_a?(Node)
              param.updated(:local_variable)

            # Optional parameters are in the format of [parameter, value].
            elsif param.is_a?(Array)
              param[0].updated(
                :local_variable,
                [param[0].children[0], param[1]]
              )
            end
          end
        end
      end

      return params.compact
    end

    ##
    # Called when a class definition is found.
    #
    # @param  [RubyLint::Node] name The name of the class.
    # @param  [RubyLint::Node] parent The name of the parent class.
    # @param  [RubyLint::Node] body The body of the class.
    # @return [RubyLint::Node]
    #
    def on_class(name, parent, body)
      return Node.new(
        :class,
        [name, parent, body],
        :line   => name.line,
        :column => name.column
      )
    end

    ##
    # Called when a module definition is found.
    #
    # @param  [RubyLint::Node] name The name of the module.
    # @param  [RubyLint::Node] body The body of the module.
    # @return [RubyLint::Node]
    #
    def on_module(name, body)
      return Node.new(
        :module,
        [name, body],
        :line   => name.line,
        :column => name.column
      )
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
  end # Parser
end # RubyLint

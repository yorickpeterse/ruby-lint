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
      :params
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
          [node],
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
        [params, body],
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
        [params, body.reject(&:nil?)],
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
    # Called when a value is assigned to a variable, array index, hash key or
    # object member.
    #
    # @param  [RubyLint::Node] assigned The data to assign the value to.
    # @param  [RubyLint::Node] value The value to assign.
    # @return [RubyLint::Node]
    #
    def on_assign(variable, value)
      return Node.new(
        :assign,
        [variable, value],
        :line   => variable.line,
        :column => variable.column
      )
    end

    ##
    # Called when a variable is referenced.
    #
    # @param  [RubyLint::Node] variable The variable that was referenced.
    # @return [RubyLint::Node]
    #
    def on_var_ref(variable)
      if variable.type == :identifier
        variable = variable.updated(:local_variable, variable.children)
      end

      return variable
    end

    ##
    # Called when a method without parenthesis is called.
    #
    # @see RubyLint::Parser#on_method_add_arg
    #
    def on_command(name, params)
      return Node.new(
        :method,
        [name, params],
        :line   => name.line,
        :column => name.column
      )
    end

    ##
    # Called when a method is called with a set of parameters.
    #
    # @param  [RubyLint::Node] name The name of the method.
    # @param  [Array] params Array of parameters passed to the method.
    # @return [RubyLint::Node]
    #
    def on_method_add_arg(name, params)
      return name.updated(nil, [*name.children, params])
    end

    ##
    # Called when a method is called with a block.
    #
    # @param  [RubyLint::Node] method The method node.
    # @param  [RubyLint::Node] block The block passed to the method.
    # @return [RubyLint::Node]
    #
    def on_method_add_block(method, block)
      return method.updated(nil, [*method.children, block])
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

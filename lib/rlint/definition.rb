module Rlint
  ##
  # {Rlint::Definition} is a class used for storing scoping/definition related
  # information such as the methods that are available for various constants,
  # variables that have been defined, etc.
  #
  # Each instance of this class can also have a number of parent scopes. These
  # parent scopes can be used to look up data that is inherited in Ruby code
  # (e.g. constants).
  #
  # Basic example of using this class:
  #
  #     scope = Rlint::Definition.new
  #
  #     scope.lookup(:local_variable, 'name') # => nil
  #
  #     scope.add(:local_variable, 'name', 'Ruby')
  #
  #     scope.lookup(:local_variable, 'name') # => "Ruby"
  #
  class Definition
    ##
    # Array containing symbol names that should be looked up in the parent
    # scopes if they're not found in the current scope.
    #
    # @return [Array]
    #
    LOOKUP_PARENT = [
      :instance_variable,
      :class_variable,
      :global_variable,
      :method,
      :instance_method,
      :constant
    ]

    ##
    # Hash containing the default options and values to use when creating a new
    # instance of this class.
    #
    # @return [Hash]
    #
    DEFAULT_OPTIONS = {
      :lazy     => false,
      :kernel   => false,
      :constant => Object,
      :reset    => true
    }

    ##
    # Array containing the parent scopes, set to an empty Array by default.
    #
    # @return [Array]
    #
    attr_reader :parent

    ##
    # Hash containing all the symbols (local variables, methods, etc) for the
    # current scope instance.
    #
    # @return [Hash]
    #
    attr_reader :symbols

    ##
    # The constant to lazy import child constants from, set to `Object` by
    # default.
    #
    # @return [Mixed]
    #
    attr_reader :constant

    ##
    # Creates a new instance of the scope class and sets the default symbols.
    #
    # @param [Array|Rlint::Definition] parent The parent scope(s). Set this to
    #  an Array of {Rlint::Definition} instances to use multiple parent scopes.
    # @param [Hash] options A hash containing custom options.
    #
    # @option options [TrueClass|FalseClass] :lazy When set to `true` missing
    #  constants will be lazy loaded.
    # @option options [TrueClass|FalseClass] :kernel When set to `true` the
    #  Kernel constant will be loaded by default.
    # @option options [Class] :constant The constant to use for importing other
    #  constants, set to `Object` by default.
    # @option options [TrueClass|FalseClass] :reset When set to `true` the
    #  `value` attribute of the token will be set to `nil`
    # @option options [Rlint::Token::Token] :token The token to set for the
    #  scope.
    #
    def initialize(parent = [], options = {})
      unless parent.is_a?(Array)
        parent = [parent]
      end

      @options = DEFAULT_OPTIONS.merge(options)
      @parent  = parent.select { |p| p.is_a?(Definition) }
      @symbols = {
        :local_variable    => {},
        :instance_variable => {},
        :class_variable    => {},
        :global_variable   => {},
        :constant          => {},
        :method            => {},
        :instance_method   => {}
      }

      # Create a copy of the token since it can be modified.
      if @options[:token]
        @options[:token] = @options[:token].dup
      end

      if @options[:token] and @options[:reset]
        @options[:token].value = nil
      end

      if options[:lazy] and options[:kernel]
        @symbols[:constant] = ConstantImporter.import(['Kernel'])
      end

      # Import the default global variables.
      if options[:kernel]
        Kernel.global_variables.each do |name|
          name  = name.to_s
          token = Token::VariableToken.new(
            :name => name,
            :type => :global_variable
          )

          add(:global_variable, name, Definition.new([], :token => token))
        end
      end
    end

    ##
    # Adds a new symbol to the scope.
    #
    # @param [#to_sym] type The type of symbol to add.
    # @param [String] name The name of the symbol.
    # @param [Mixed] value The value to store under the specified name.
    #
    def add(type, name, value = nil)
      @symbols[type.to_sym][name] = value
    end

    ##
    # Looks up a symbol in the current and parent scopes (if there are any).
    #
    # @param [#to_sym] type The type of symbol to look up.
    # @param [String] name The name of the symbol to look up.
    #
    def lookup(type, name)
      name   = name.to_s unless name.is_a?(String)
      symbol = nil
      type   = type.to_sym

      if @symbols[type] and @symbols[type][name]
        symbol = @symbols[type][name]
      # Look up the variable in the parent scope(s) (if any are set).
      elsif LOOKUP_PARENT.include?(type) and !@parent.empty?
        @parent.each do |parent|
          parent_symbol = parent.lookup(type, name)

          if parent_symbol
            symbol = parent_symbol
            break
          end
        end
      end

      # Lazy import the constant if it exists.
      if @options[:lazy] \
      and type == :constant \
      and !symbol \
      and @options[:constant].constants.include?(name.to_sym)
        @symbols[:constant] = @symbols[:constant].merge(
          ConstantImporter.import([name], @options[:constant])
        )

        symbol = lookup(type, name)
      end

      return symbol
    end

    ##
    # Returns the token associated with the scope.
    #
    # @return [Rlint::Token::Token|NilClass]
    #
    def token
      return @options[:token]
    end

    ##
    # Sets the token of the scope.
    #
    # @param [Rlint::Token::Token] token The token to use.
    #
    def token=(token)
      @options[:token]       = token.dup
      @options[:token].value = nil if @options[:reset]
    end
  end # Definition
end # Rlint

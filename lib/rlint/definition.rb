module Rlint
  ##
  # {Rlint::Definition} is a class that stores token and scoping information in
  # a single instance. This class is primarily used by
  # {Rlint::Analyze::Definitions} to store token information (excluding any
  # child tokens) along with an associated instance of {Rlint::Scope}.
  #
  class Definition
    ##
    # Instance of {Rlint::Token::Token} (or one of its child classes) excluding
    # any sub tokens.
    #
    # @return [Rlint::Token::Token]
    #
    attr_reader :token

    ##
    # Instance of {Rlint::Scope} that contains scoping information for classes,
    # methods, etc.
    #
    # @return [Rlint::Scope]
    #
    attr_reader :scope

    ##
    # Creates a new instance of the class and stores the supplied data. The
    # specified token class is cloned and modified so that any sub tokens are
    # removed.
    #
    # @param [Rlint::Token::Token] token The token class to store.
    # @param [Rlint::Scope|NilClass] scope An optional instance of
    #  {Rlint::Scope} to store.
    # @param [TrueClass|Falseclass] reset_value When set to `true` (the
    #  default) the `value` attribute of the token will be set to `nil`.
    #
    def initialize(token, scope = nil, reset_value = true)
      @token = token.dup
      @scope = scope

      @token.value = nil if reset_value
    end

    ##
    # Looks up data in the associated {Rlint::Scope} instance (if any).
    #
    # @see Rlint::Scope#lookup
    #
    def lookup(*args)
      return @scope.lookup(*args) if @scope
    end

    ##
    # Adds data to the scope of the definition.
    #
    # @see Rlint::Scope#add
    #
    def add(*args)
      return @scope.add(*args) if @scope
    end
  end # Definition
end # Rlint

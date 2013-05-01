module RubyLint
  ##
  # Module that provides various predicate methods for checking node/definition
  # types.
  #
  module VariablePredicates
    ##
    # Array containing the various variable types that are available in Ruby.
    #
    # @return [Array]
    #
    VARIABLE_TYPES = [:lvar, :ivar, :cvar, :gvar]

    ##
    # Array containing various Ruby types that are considered to be scalar
    # values.
    #
    # @return [Array]
    #
    SCALAR_TYPES = [:int, :float, :str, :sym]

    ##
    # Array containing various predicate methods to create.
    #
    # @return [Array]
    #
    PREDICATE_METHODS = [:array, :class, :const, :hash, :module]

    ##
    # Hash containing various Node types and the associated Ruby classes.
    #
    # @return [Hash]
    #
    RUBY_CLASSES = {
      :str    => 'String',
      :sym    => 'Symbol',
      :int    => 'Fixnum',
      :float  => 'Float',
      :regexp => 'Regexp',
      :array  => 'Array',
      :hash   => 'Hash',
      :irange => 'Range',
      :erange => 'Range',
      :lambda => 'Proc'
    }

    (VARIABLE_TYPES + PREDICATE_METHODS).each do |type|
      define_method("#{type}?") do
        return @type == type
      end
    end

    ##
    # Returns `true` if the current node is a variable node.
    #
    # @return [TrueClass|FalseClass]
    #
    def variable?
      return VARIABLE_TYPES.include?(type)
    end

    ##
    # @return [TrueClass|FalseClass]
    #
    def constant?
      return type == :const || type == :module || type == :class
    end

    ##
    # @return [TrueClass|FalseClass]
    #
    def constant_path?
      return constant? && children[0].constant?
    end

    ##
    # @return [TrueClass|FalseClass]
    #
    def method?
      return type == :send || type == :method
    end

    ##
    # @return [TrueClass|FalseClass]
    #
    def method_definition?
      return type == :def || type == :method_definition
    end

    ##
    # Returns `true` if the object type is a Ruby scalar such as a string or
    # integer.
    #
    def scalar?
      return SCALAR_TYPES.include?(type)
    end

    ##
    # Indicates if the node is a collection of values.
    #
    # @return [TrueClass|FalseClass]
    #
    def collection?
      return array? || hash?
    end

    ##
    # @return [String]
    #
    def ruby_class
      return RUBY_CLASSES[type]
    end
  end # VariablePredicates
end # RubyLint

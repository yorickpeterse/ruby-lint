module RubyLint
  ##
  # Module that provides various predicate methods for checking node/definition
  # types.
  #
  module VariablePredicates
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
    PREDICATE_METHODS = [:array, :class, :const, :hash, :module, :self, :block]

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

    PREDICATE_METHODS.each do |type|
      define_method("#{type}?") do
        return @type == type
      end
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
    # @return [String]
    #
    def ruby_class
      return RUBY_CLASSES[type]
    end
  end # VariablePredicates
end # RubyLint

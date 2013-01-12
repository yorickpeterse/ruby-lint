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
    VARIABLE_TYPES = [
      :local_variable,
      :instance_variable,
      :class_variable,
      :global_variable,
      :constant,
      :constant_path
    ]

    ##
    # Array containing various Ruby types that are considered to be scalar
    # values.
    #
    # @return [Array]
    #
    SCALAR_TYPES = [:integer, :float, :string]

    ##
    # Array containing various predicate methods to create.
    #
    # @return [Array]
    #
    PREDICATE_METHODS = [
      :identifier,
      :module,
      :class,
      :hash,
      :array,
      :method,
      :method_definition
    ]

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
      return VARIABLE_TYPES.include?(@type)
    end

    ##
    # @return [TrueClass|FalseClass]
    #
    def constant?
      return @type == :constant || @type == :module || @type == :class
    end

    ##
    # Returns `true` if the object type is a Ruby scalar such as a string or
    # integer.
    #
    def scalar?
      return SCALAR_TYPES.include?(@type)
    end
  end # VariablePredicates
end # RubyLint

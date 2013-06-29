module RubyLint
  module Definition
    ##
    # The RubyMethod definition class is a definition class used for storing
    # information about Ruby methods (both class and instance methods).
    #
    # @see RubyLint::Definition::RubyObject
    #
    # @!attribute [r] visibility
    #  @return [Symbol] The method visibility such as `:public`.
    #
    # @!attribute [r] arguments
    #  @return [Array] The required/specified arguments of a method definition
    #   or method call.
    #
    # @!attribute [r] optional_arguments
    #  @return [Array] Array containing the optional arguments of a method
    #   definition.
    #
    # @!attribute [r] rest_argument
    #  @return [RubyLint::Definition::RubyObject] The rest argument of a
    #   method definition.
    #
    # @!attribute [r] block_argument
    #  @return [RubyLint::Definition::RubyObject] The block argument of a
    #   method definition.
    #
    # @!attribute [r] method_type
    #  @return [Symbol] The type of method definition, set to `:method` for
    #   class methods and `:instance_method` for instance methods.
    #
    # @!attribute [r] return_value
    #  @return [Mixed] The value that is returned by the method.
    #
    class RubyMethod < RubyObject
      attr_reader :block_argument,
        :arguments,
        :method_type,
        :optional_arguments,
        :rest_argument,
        :return_value,
        :visibility

      ##
      # @see RubyLint::Definition::RubyObject#initialize
      #
      def initialize(*args)
        @arguments          = []
        @optional_arguments = []

        super
      end

      ##
      # Sets the return value of this method. If a block is given it will be
      # used as the return value. The block is *not* evaluated until it's
      # called.
      #
      # @example
      #  string.define_instance_method(:gsub) do |method|
      #    method.returns('...')
      #  end
      #
      # @param [Mixed] value
      #
      def returns(value = nil, &block)
        @return_value = block_given? ? block : value
      end

      ##
      # Defines a required argument for the method.
      #
      # @example
      #  method.define_argument('number')
      #
      # @param [String] name The name of the argument.
      #
      def define_argument(name)
        @arguments << create_argument(:arg, name)
      end

      ##
      # Defines a optional argument for the method.
      #
      # @see RubyLint::Definition::RubyObject#define_argument
      #
      def define_optional_argument(name)
        @optional_arguments << create_argument(:optarg, name)
      end

      ##
      # Defines a rest argument for the method.
      #
      # @see RubyLint::Definition::RubyObject#define_argument
      #
      def define_rest_argument(name)
        @rest_argument = create_argument(:restarg, name)
      end

      ##
      # Defines a block argument for the method.
      #
      # @see RubyLint::Definition::RubyObject#define_argument
      #
      def define_block_argument(name)
        @block_argument = create_argument(:blockarg, name)
      end

      private

      ##
      # @param [Symbol] type The type of argument.
      # @param [String] name The name of the argument.
      #
      # @return [RubyLint::Definition::RubyObject]
      #
      def create_argument(type, name)
        arg = RubyObject.new(:type => type, :name => name)
        var = RubyObject.new(:type => :lvar, :name => name)

        add_definition(arg)
        add_definition(var)

        return arg
      end
    end # RubyMethod
  end # Definition
end # RubyLint

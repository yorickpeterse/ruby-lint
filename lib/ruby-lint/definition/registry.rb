module RubyLint
  module Definition
    ##
    # The Registry class is used to register and store definitions that have
    # to be applied to instances of {RubyLint::VirtualMachine}.
    #
    # @!attribute [r] registered
    #  @return [Hash] Returns the registered definitions as a Hash. The keys
    #   are set to the constant names, the values to `Proc` instances that,
    #   when evaluated, create the corresponding definitions.
    #
    class Registry
      attr_reader :registered

      def initialize
        @registered = {}
      end

      ##
      # Registers a new definition with the given name.
      #
      # @param [String] name The name of the constant.
      #
      def register(name, &block)
        registered[name] = block
      end

      ##
      # Gets the constant with the given name.
      #
      # @param [String] constant
      # @raise [ArgumentError] Raised if the given constant doesn't exist.
      #
      def get(constant)
        found = registered[constant]

        if found
          return found
        else
          raise ArgumentError, "The constant #{constant} does not exist"
        end
      end

      ##
      # Applies the definitions of a given name to the given
      # {RubyLint::Definition::RubyObject} instance.
      #
      # @param [String] constant
      # @param [RubyLint::Definition::RubyObject] definitions
      #
      def apply(constant, definitions)
        get(constant).call(definitions)
      end
    end # Registry
  end # Definition
end # RubyLint

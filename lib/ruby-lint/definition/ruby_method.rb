module RubyLint
  module Definition
    ##
    # Definition class used for storing information about both method calls and
    # definitions.
    #
    # @see RubyLint::Definition::RubyObject
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
    # @!attribute [r] more_arguments
    #  @return [Array] A set of "more" arguments of the method definition.
    #
    # @!attribute [r] block_argument
    #  @return [RubyLint::Definition::RubyObject] The block argument of a
    #   method definition.
    #
    # @!attribute [r] method_type
    #  @return [Symbol] The type of method definition, set to `:method` for
    #   class methods and `:instance_method` for instance methods.
    #
    class RubyMethod < RubyObject
      ##
      # Hash that contains the node types and attribute names to store the
      # arguments in.
      #
      # @return [Hash]
      #
      ARGUMENT_TYPE_MAPPING = {
        :argument          => :arguments,
        :optional_argument => :optional_arguments,
        :rest_argument     => :rest_argument,
        :more_argument     => :more_arguments,
        :block_argument    => :block_argument
      }

      attr_reader :block_argument,
        :method_type,
        :more_arguments,
        :optional_arguments,
        :arguments,
        :rest_argument,
        :visibility

      ##
      # @see RubyLint::Definition::RubyObject#new_from_node
      #
      def self.new_from_node(node, options = {})
        options  = default_method_options.merge(options)
        options  = options.merge(gather_arguments(node))
        receiver = node.receiver

        options[:method_type] ||= node.method_type

        if receiver
          options[:receiver]    = RubyObject.new_from_node(receiver)
          options[:method_type] = :method
        end

        return super(node, options)
      end

      ##
      # Returns a Hash containing all the arguments grouped together based on
      # their types.
      #
      # @param [RubyLint::Node] node
      # @return [Hash]
      #
      def self.gather_arguments(node)
        arguments = default_arguments

        ARGUMENT_TYPE_MAPPING.each do |from, to|
          args = node.gather_arguments(from)
          args = args.map { |n| RubyObject.new_from_node(n, :value => n.value) }

          arguments[to] = arguments[to].is_a?(Array) ? args : args[0]
        end

        return arguments
      end

      ##
      # Returns the default Hash for a set of method arguments.
      #
      # @return [Hash]
      #
      def self.default_arguments
        return {
          :arguments          => [],
          :optional_arguments => [],
          :rest_argument      => nil,
          :more_arguments     => [],
          :block_argument     => nil
        }
      end

      ##
      # Returns a Hash containing the default options for this class. The name
      # is different than {RubyLint::Definition::RubyObject#default_options} to
      # prevent any naming issues.
      #
      # @return [Hash]
      #
      def self.default_method_options
        return {:method_type => :instance_method}
      end

      ##
      # @see RubyLint::Definition::RubyObject#initialize
      #
      def initialize(*args)
        super

        define_arguments unless method?
      end

      private

      ##
      # Adds all the arguments of this method to the definitions list.
      #
      def define_arguments
        all_arguments.each do |params|
          next unless params

          params.each do |param|
            add(param.type, param.name, param) if param
          end
        end
      end

      ##
      # Returns an Array containing all the method arguments. Each arguments
      # set (even single ones such as the more argument) is returned as an
      # Array making it easier to iterate over the collection.
      #
      # @return [Array]
      #
      def all_arguments
        return [
          arguments,
          optional_arguments,
          [rest_argument],
          more_arguments,
          [block_argument]
        ]
      end
    end # RubyMethod
  end # Definition
end # RubyLint

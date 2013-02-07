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
    # @!attribute [r] definition_type [Symbol]
    #  @return The type of method definition, set to `:method` for class
    #   methods and `:instance_method` for instance methods.
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
        :definition_type,
        :more_arguments,
        :optional_arguments,
        :arguments,
        :rest_argument,
        :visibility

      ##
      # @see RubyLint::Definition::RubyObject#new_from_node
      #
      def self.new_from_node(node, options = {})
        children = node.children
        receiver = receiver_index(node)
        options  = default_method_options.merge(options)

        options = options.merge(gather_arguments(children[1]))

        if receiver
          options[:receiver] = RubyObject.new_from_node(children[receiver])
          options[:definition_type] = :method
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

        node.children.each do |child|
          key    = ARGUMENT_TYPE_MAPPING[child.type]
          node   = child.children[0]
          object = RubyObject.new_from_node(node, :value => node.value)

          if arguments[key].is_a?(Array)
            arguments[key] << object
          else
            arguments[key] = object
          end
        end

        return arguments
      end

      ##
      # Determines the index of the receiver object.
      #
      # @param [RubyLint::Node] node
      # @return [Numeric]
      #
      def self.receiver_index(node)
        receiver = nil

        if node.method? and node.children[-1]
          receiver = -1
        elsif !node.method? and node.children[-2]
          receiver = -2
        end

        return receiver
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
        return {
          :receiver        => nil,
          :definition_type => :instance_method
        }
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

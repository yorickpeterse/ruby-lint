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
      # Hash containing the argument indexes and the instance variable names
      # to store them in.
      #
      # @return [Hash]
      #
      PARAMETER_VARIABLES = {
        1 => :optional_arguments,
        2 => :rest_argument,
        3 => :more_arguments,
        4 => :block_argument
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

        options[:arguments] = children[1]

=begin
        if options[:arguments]
          options[:arguments] = options[:arguments].map do |n|
            RubyObject.new_from_node(n)
          end
        end

        set_arguments(options, children) unless node.method?

        if receiver
          options[:receiver] = RubyObject.new_from_node(children[receiver])
          options[:definition_type] = :method
        end
=end

        return super(node, options)
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
      # Sets the various arguments of the method definition.
      #
      # @param [Hash] options Hash used for storing the various variables.
      # @param [Array] children The child nodes of the method definition node.
      # @return [Hash]
      #
      def self.set_arguments(options, children)
        PARAMETER_VARIABLES.each do |index, variable|
          # Parameters such as the optional ones.
          if children[1][index].is_a?(Array)
            params = children[1][index].map do |node|
              RubyObject.new_from_node(node, :value => node.children[1])
            end

          # Rest and block arguments.
          elsif children[1][index]
            params = RubyObject.new_from_node(children[1][index])
          end

          options[variable] = params
        end

        return options
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
        [
          @arguments,
          @optional_arguments,
          @rest_argument,
          @more_arguments,
          @block_argument
        ].each do |params|
          next unless params

          if params.is_a?(Array)
            params.each { |param| add(param.type, param.name, param) }
          else
            add(params.type, params.name, params)
          end
        end
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
          :arguments          => [],
          :optional_arguments => [],
          :rest_argument      => nil,
          :more_arguments     => [],
          :block_argument     => nil,
          :receiver            => nil,
          :definition_type     => :instance_method
        }
      end
    end # RubyMethod
  end # Definition
end # RubyLint

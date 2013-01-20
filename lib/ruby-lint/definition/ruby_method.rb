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
    # @!attribute [r] parameters
    #  @return [Array] The required/specified parameters of a method definition
    #   or method call.
    #
    # @!attribute [r] optional_parameters
    #  @return [Array] Array containing the optional parameters of a method
    #   definition.
    #
    # @!attribute [r] rest_parameter
    #  @return [RubyLint::Definition::RubyObject] The rest parameter of a
    #   method definition.
    #
    # @!attribute [r] more_parameters
    #  @return [Array] A set of "more" parameters of the method definition.
    #
    # @!attribute [r] block_parameter
    #  @return [RubyLint::Definition::RubyObject] The block parameter of a
    #   method definition.
    #
    # @!attribute [r] definition_type [Symbol]
    #  @return The type of method definition, set to `:method` for class
    #   methods and `:instance_method` for instance methods.
    #
    class RubyMethod < RubyObject
      ##
      # Hash containing the parameter indexes and the instance variable names
      # to store them in.
      #
      # @return [Hash]
      #
      PARAMETER_VARIABLES = {
        1 => :optional_parameters,
        2 => :rest_parameter,
        3 => :more_parameters,
        4 => :block_parameter
      }

      attr_reader :block_parameter,
        :definition_type,
        :more_parameters,
        :optional_parameters,
        :parameters,
        :rest_parameter,
        :visibility

      ##
      # @see RubyLint::Definition::RubyObject#new_from_node
      #
      def self.new_from_node(node, options = {})
        children = node.children
        receiver = nil
        options  = {
          :parameters          => [],
          :optional_parameters => [],
          :rest_parameter      => nil,
          :more_parameters     => [],
          :block_parameter     => nil,
          :receiver            => nil,
          :definition_type     => :instance_method
        }.merge(options)

        options[:parameters] = node.method? ? children[1] : children[1][0]

        if options[:parameters]
          options[:parameters].map! { |n| RubyObject.new_from_node(n) }
        end

        set_parameters(options, children) unless node.method?

        if node.method? and children[-1]
          receiver = -1
        elsif !node.method? and children[-2]
          receiver = -2
        end

        if receiver
          options[:receiver] = RubyObject.new_from_node(children[receiver])

          # TODO: this is rather naive as methods defined on variables will be
          # considered class methods by this line (while they are instance
          # methods instead).
          options[:definition_type] = :method
        end

        return super(node, options)
      end

      ##
      # Sets the various parameters of the method definition.
      #
      # @param [Hash] options Hash used for storing the various variables.
      # @param [Array] children The child nodes of the method definition node.
      # @return [Hash]
      #
      def self.set_parameters(options, children)
        PARAMETER_VARIABLES.each do |index, variable|
          # Parameters such as the optional ones.
          if children[1][index].is_a?(Array)
            params = children[1][index].map do |node|
              RubyObject.new_from_node(node, :value => node.children[1])
            end

          # Rest and block parameters.
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

        unless method?
          define_parameters
        end
      end

      private

      ##
      # Adds all the parameters of this method to the definitions list.
      #
      def define_parameters
        [
          @parameters,
          @optional_parameters,
          @rest_parameter,
          @more_parameters,
          @block_parameter
        ].each do |params|
          next unless params

          if params.is_a?(Array)
            params.each { |param| add(param.type, param.name, param) }
          else
            add(params.type, params.name, params)
          end
        end
      end
    end # RubyMethod
  end # Ruby
end # RubyLint
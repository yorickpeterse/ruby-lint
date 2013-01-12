module RubyLint
  module Definition
    ##
    # Definition class used for storing information about both method calls and
    # definitions.
    #
    # @see RubyLint::Definition::RubyObject
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

      ##
      # The visibility of the method.
      #
      # @return [Symbol]
      #
      attr_reader :visibility

      ##
      # Array containing the required or specified (in case of method calls)
      # parameters.
      #
      # @return [Array]
      #
      attr_reader :parameters

      ##
      # Array containing the option parameters.
      #
      # @return [Array]
      #
      attr_reader :optional_parameters

      ##
      # The rest parameter.
      #
      # @return [RubyLint::Definition::RubyObject|NilClass]
      #
      attr_reader :rest_parameter

      ##
      # Array containing all the "more" parameters.
      #
      # @return [Array]
      #
      attr_reader :more_parameters

      ##
      # The block parameter.
      #
      # @return [RubyLint::Definition::RubyObject|NilClass]
      #
      attr_reader :block_parameter

      ##
      # The type of method definition, either `:method` or `:instance_method`.
      #
      # @return [Symbol]
      #
      attr_reader :definition_type

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

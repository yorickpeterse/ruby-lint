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
        1 => :@optional_parameters,
        2 => :@rest_parameter,
        3 => :@more_parameters,
        4 => :@block_parameter
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
      # @return [RubyLint::Definition::RubyVariable|NilClass]
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
      # @return [RubyLint::Definition::RubyVariable|NilClass]
      #
      attr_reader :block_parameter

      ##
      # The type of method definition, either `:method` or `:instance_method`.
      #
      # @return [Symbol]
      #
      attr_reader :definition_type

      ##
      # @see RubyLint::Definition::RubyObject#initialize
      #
      def initialize(*args)
        super

        @parameters = []

        if method_call? and @value[1]
          @parameters = @value[1].map do |node|
            node.variable? ? RubyVariable.new(node) : RubyObject.new(node)
          end
        elsif @value[1][0]
          @parameters = @value[1][0].map { |node| RubyVariable.new(node) }
        end

        @optional_parameters = []
        @rest_parameter      = nil
        @more_parameters     = []
        @block_parameter     = nil
        @receiver            = nil

        unless method_call?
          set_parameters
          define_parameters
        end

        if method_call?
          @receiver = RubyVariable.new(@value[-1]) if @value[-1]
        else
          @receiver = RubyVariable.new(@value[-2]) if @value[-2]
        end

        # TODO: this is rather naive as methods defined on variables will be
        # considered class methods by this line (while they are instance
        # methods instead).
        @definition_type = @receiver ? :method : :instance_method
      end

      ##
      # Returns `true` if the current object belongs to a method call.
      #
      # @return [TrueClass|FalseClass]
      #
      def method_call?
        return @type == :method
      end

      private

      ##
      # Sets the various parameters of the method definition.
      #
      def set_parameters
        PARAMETER_VARIABLES.each do |index, variable|
          # Parameters such as the optional ones.
          if @value[1][index].is_a?(Array)
            params = @value[1][index].map do |node|
              RubyVariable.new(node, node.children[1])
            end

          # Rest and block parameters.
          elsif @value[1][index]
            params = RubyVariable.new(@value[1][index])
          end

          instance_variable_set(variable, params)
        end
      end

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

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
      # @see RubyLint::Definition::RubyObject#initialize
      #
      def initialize(*args)
        super

        @parameters = []

        if method? and children[1]
          @parameters = children[1]
        elsif children[1][0]
          @parameters = children[1][0]
        end

        @parameters.map! { |node| RubyObject.new(node) }

        @optional_parameters = []
        @rest_parameter      = nil
        @more_parameters     = []
        @block_parameter     = nil
        @receiver            = nil

        unless method?
          set_parameters
          define_parameters
        end

        if method?
          @receiver = RubyObject.new(children[-1]) if children[-1]
        else
          @receiver = RubyObject.new(children[-2]) if children[-2]
        end

        # TODO: this is rather naive as methods defined on variables will be
        # considered class methods by this line (while they are instance
        # methods instead).
        @definition_type = @receiver ? :method : :instance_method
      end

      private

      ##
      # Sets the various parameters of the method definition.
      #
      def set_parameters
        PARAMETER_VARIABLES.each do |index, variable|
          # Parameters such as the optional ones.
          if children[1][index].is_a?(Array)
            params = children[1][index].map do |node|
              RubyObject.new(node, :value => node.children[1])
            end

          # Rest and block parameters.
          elsif children[1][index]
            params = RubyObject.new(children[1][index])
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

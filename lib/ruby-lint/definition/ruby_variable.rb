module RubyLint
  module Definition
    ##
    # Definition class used specifically for variables. Unlike
    # {RubyLint::Definition::RubyObject} the constructor method of this class
    # takes two parameters:
    #
    # * the node for the variable
    # * the node for the value
    #
    # The latter is optional and set to `nil` by default.
    #
    # @see RubyLint::Definition::RubyObject
    #
    class RubyVariable < RubyObject
      ##
      # @param [RubyLint::Node] variable The variable node.
      # @param [RubyLint::Node] value The node containing details about the
      #  variable's value.
      # @see RubyLint::Definition::RubyObject
      #
      def initialize(variable, value = nil, options = {})
        if variable.type == :constant_path
          segments = variable.children[0..-2]
          variable = variable.children[-1]
          target   = self

          segments.reverse.each do |segment|
            target.receiver = RubyVariable.new(segment)
            target          = target.receiver
          end
        end

        super(variable, options)

        if value.is_a?(RubyObject)
          @value = value
        elsif value
          @value = RubyObject.new(value)
        else
          @value = nil
        end
      end

      ##
      # @return [TrueClass|FalseClass]
      #
      def local_variable?
        return @type == :local_variable
      end

      ##
      # @return [TrueClass|FalseClass]
      #
      def instance_variable?
        return @type == :instance_variable
      end

      ##
      # @return [TrueClass|FalseClass]
      #
      def class_variable?
        return @type == :class_variable
      end

      ##
      # @return [TrueClass|FalseClass]
      #
      def global_variable?
        return @type == :global_variable
      end

      ##
      # @return [TrueClass|FalseClass]
      #
      def constant?
        return @type == :constant
      end

      ##
      # Returns an array containing the "path" of all receivers from left to
      # right.
      #
      # @return [Array]
      #
      def receiver_path
        receivers = []
        source    = self

        while receiver = source.receiver
          receivers << receiver
          source     = receiver
        end

        return receivers << self
      end
    end # RubyVariable
  end # Ruby
end # RubyLint

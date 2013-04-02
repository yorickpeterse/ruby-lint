module RubyLint
  ##
  # {RubyLint::Node} is a class that represents a single node in the AST of a
  # Ruby program. It contains information such as the type, children, line
  # number and column number.
  #
  class Node < AST::Node
    include VariablePredicates

    ##
    # Returns the line number of the node.
    #
    # @return [Fixnum]
    #
    attr_reader :line

    ##
    # Returns the column number of the node.
    #
    # @return [Fixnum]
    #
    attr_reader :column

    ##
    # Returns the name of the file that the node belongs to.
    #
    # @return [String]
    #
    attr_reader :file

    ##
    # @return [String]
    #
    def name
      name = children[0] || type
      name = name.is_a?(Node) ? name.children[0] : name

      return name.to_s
    end

    ##
    # @return [Mixed]
    #
    def value
      value = collection? ? children : children[-1]
      value = children[1] if variable?

      return value
    end

    ##
    # Returns the receiver of the method call/definition.
    #
    # @return [RubyLint::Node]
    #
    def receiver
      return method? ? children[-1] : children[-2]
    end

    ##
    # Returns a symbol that indicates if a node is either a method or instance
    # method.
    #
    # @return [Symbol]
    #
    def method_type
      return receiver ? :method : :instance_method
    end

    ##
    # Gathers a set of arguments and returns them as an Array.
    #
    # @param [#to_sym] type The type of arguments to gather.
    # @return [Array]
    #
    def gather_arguments(type = :argument)
      args = []
      type = type.to_sym

      children.each do |child|
        if !child.is_a?(Node) or child.type != :arguments
          next
        end

        child.children.each do |child_arg|
          next unless child_arg.type == type

          args << child_arg.children[0]
        end
      end

      return args
    end

    ##
    # Iterates over each argument of the given type.
    #
    # @param [Symbol] type The argument type.
    # @yieldparam [RubyLint::Node] argument
    #
    def each_argument(type = :argument)
      gather_arguments(type).each do |arg|
        yield arg
      end
    end
  end # Node
end # RubyLint

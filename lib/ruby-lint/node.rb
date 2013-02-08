require 'furnace/ast'

module RubyLint
  ##
  # {RubyLint::Node} is a class that represents a single node in the AST of a
  # Ruby program. It contains information such as the type, children, line
  # number and column number.
  #
  class Node < Furnace::AST::Node
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
    # @return [Array]
    #
    def to_a
      return children
    end

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
    # Indicates if the node is a collection of values.
    #
    # @return [TrueClass|FalseClass]
    #
    def collection?
      return array? || hash?
    end
  end # Node
end # RubyLint

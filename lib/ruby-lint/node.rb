require 'furnace/ast'

module RubyLint
  ##
  # {RubyLint::Node} is a class that represents a single node in the AST of a
  # Ruby program. It contains information such as the type, children, line
  # number and column number.
  #
  class Node < Furnace::AST::Node
    ##
    # Returns the line number of the node.
    #
    # @return [Fixnum|Bignum]
    #
    attr_reader :line

    ##
    # Returns the column number of the node.
    #
    # @return [Fixnum|Bignum]
    #
    attr_reader :column
  end # Node
end # RubyLint

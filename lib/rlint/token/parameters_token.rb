module Rlint
  module Token
    ##
    # Token class that contains details about the parameters of a method.
    #
    # The following attributes are used:
    #
    # * value: contains the required parameters (aliased as `#required()`)
    # * optional: contains all optional parameters
    # * rest: contains the rest parameter (if any)
    # * more: contains all more parameters (parameters specified after a rest
    #   parameter).
    # * block: contains the block parameter (if any)
    #
    class ParametersToken < Token
      ##
      # An array of optional parameters.
      #
      # @return [Array]
      #
      attr_accessor :optional

      ##
      # The rest parameter (if any).
      #
      # @return [Rlint::Token::Token]
      #
      attr_accessor :rest

      ##
      # An array of more parameters.
      #
      # @return [Array]
      #
      attr_accessor :more

      ##
      # The block parameter (if any).
      #
      # @return [Rlint::Token::Token]
      #
      attr_accessor :block

      ##
      # @see Rlint::Token::Token#initialize
      #
      def initialize(*args)
        @optional = []
        @more     = []

        super
      end

      ##
      # @see Rlint::Token::Token#child_nodes
      #
      def child_nodes
        nodes = super

        if @optional
          nodes << @optional
        end

        if @rest
          nodes << [@rest]
        end

        if @more
          nodes << @more
        end

        if @block
          nodes << [@block]
        end

        return nodes.select { |array| array.length > 0 }
      end
    end # ParametersToken
  end # Token
end # Rlint

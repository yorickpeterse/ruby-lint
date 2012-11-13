module RubyLint
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
      # @return [RubyLint::Token::Token]
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
      # @return [RubyLint::Token::Token]
      #
      attr_accessor :block

      ##
      # @see RubyLint::Token::Token#initialize
      #
      def initialize(*args)
        @optional = []
        @more     = []
        @value    = []

        super
      end

      ##
      # @see RubyLint::Token::Token#child_nodes
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

      ##
      # Executes the provided block for every parameter of the method. The
      # order in which parameters are processed is the following:
      #
      # 1. Required parameters
      # 2. Optional parameters
      # 3. Rest parameters
      # 4. "More" parameters
      # 5. Block parameters
      #
      def each
        params = [@value, @optional, @rest, @more, @block].select do |p|
          !p.nil?
        end

        params.flatten.each { |param| yield param }
      end
    end # ParametersToken
  end # Token
end # RubyLint

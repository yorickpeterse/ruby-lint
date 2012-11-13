module RubyLint
  module Token
    ##
    # Token class used for storing data about a newly defined method.
    #
    # @since 2012-08-02
    #
    class MethodDefinitionToken < Token
      ##
      # The object the method is defined on, only set when this is explicitly
      # stated.
      #
      # @return [RubyLint::Token::Token]
      #
      attr_accessor :receiver

      ##
      # The operator that was used to separate the receiver and method name.
      #
      # @return [RubyLint::Token::Token]
      #
      attr_accessor :operator

      ##
      # The parameters of the method.
      #
      # @return [RubyLint::Token::ParametersToken]
      #
      attr_accessor :parameters

      ##
      # The visibility of the method, set to `:public` by default.
      #
      # @since  2012-08-07
      # @return [Symbol]
      #
      attr_accessor :visibility

      ##
      # @see RubyLint::Token::Token#initialize
      #
      def initialize(*args)
        @parameters = []
        @visibility = :public
        @type       = :method_definition

        super

        # Ensure that the parameters attribute always contains an instance of
        # `RubyLint::Token::ParametersToken`.
        unless @parameters.class == ParametersToken
          @parameters = ParametersToken.new
        end
      end

      ##
      # @see RubyLint::Token::Token#child_nodes
      #
      def child_nodes
        return @parameters.child_nodes + super
      end
    end # MethodDefinitionToken
  end # Token
end # RubyLint

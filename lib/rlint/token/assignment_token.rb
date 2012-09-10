module Rlint
  module Token
    ##
    # Token class that is used whenever a value is assigned to a variable,
    # object attribute or similar.
    #
    class AssignmentToken < Token
      ##
      # The object receiver, set when a value is assigned to an object
      # attribute.
      #
      # @return [Rlint::Token::Token]
      #
      attr_accessor :receiver

      ##
      # Symbol containing the operator that was used to separate the receiver
      # and attribute name.
      #
      # @return [Symbol]
      #
      attr_accessor :operator

      ##
      # @see Rlint::Token::Token#initialize
      #
      def initialize(*args)
        super

        @type  = :local_variable if @type == :identifier
        @event = :assignment
      end
    end # AssignmentToken
  end # Token
end # Rlint

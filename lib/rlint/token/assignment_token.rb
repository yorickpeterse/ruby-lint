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

        # Correct the types for local variable tokens in the name (only used
        # for mass assignments).
        if @name and @name.is_a?(Array)
          @name.each_with_index do |value, index|
            if @name[index].respond_to?(:type) \
            and @name[index].type == :identifier
              @name[index].type = :local_variable
            end
          end
        end
      end
    end # AssignmentToken
  end # Token
end # Rlint

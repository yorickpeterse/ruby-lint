module Rlint
  module Token
    ##
    # Token class used for storing data about classes.
    #
    class ClassToken < Token
      ##
      # The name of the parent class, if specified.
      #
      # @return [String]
      #
      attr_accessor :parent

      ##
      # @see Rlint::Token::Token#initialize
      #
      def initialize(*args)
        super

        @parent = ['Object'] if @parent.empty?
      end
    end # ClassToken
  end # Token
end # Rlint

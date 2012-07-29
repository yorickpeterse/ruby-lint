module Rlint
  module Token
    ##
    # Token class used for storing data about classes.
    #
    # @since 2012-07-29
    #
    class ClassToken < Token
      ##
      # The parent class, if any.
      #
      # @since 2012-07-29
      #
      attr_reader :parent
    end # ClassToken
  end # Token
end # Rlint

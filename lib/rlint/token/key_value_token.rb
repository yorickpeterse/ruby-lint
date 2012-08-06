module Rlint
  module Token
    ##
    # Token class that stores information about a single key/value pair of a
    # hash.
    #
    # @since 2012-07-30
    #
    class KeyValueToken < Token
      ##
      # Token containing details about the key of the key/value pair.
      #
      # @since  2012-07-30
      # @return [Rlint::Token::ValueToken]
      #
      attr_accessor :key
    end # KeyValueToken
  end # Token
end # Rlint

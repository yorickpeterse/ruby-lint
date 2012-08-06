module Rlint
  module Token
    ##
    # Token class used for storing information about blocks/procs.
    #
    # @since 2012-08-05
    #
    class BlockToken < Token
      ##
      # Array of parameters that the block takes.
      #
      # @since  2012-08-05
      # @return [Array]
      #
      attr_accessor :parameters

      ##
      # The local scope of the block.
      #
      # @since  2012-08-05
      # @return [Rlint::Scope]
      #
      attr_accessor :scope
    end
  end # Token
end # Rlint

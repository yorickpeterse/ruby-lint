module Rlint
  module Analyze
    ##
    # {Rlint::Analyze::ShadowingVariables} is used to add warnings when block
    # parameters shadow outer local variables.
    #
    class ShadowingVariables < Rlint::Callback
      include Helper::DefinitionResolver

      ##
      # Called when a block is found. This callback is used to check if the
      # parameters of the block shadow existing local variables defined in the
      # outer scope.
      #
      # @param [Rlint::Token::BlockToken] token The token of the block.
      #
      def on_block(token)
        token.parameters.each do |param|
          if scope.lookup(param.type, param.name)
            warning(
              "shadowing outer local variable #{param.name}",
              param.line,
              param.column
            )
          end
        end
      end
    end # ShadowingVariables
  end # Analyze
end # Rlint

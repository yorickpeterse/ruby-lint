module RubyLint
  module DefinitionBuilder
    ##
    # Definition builder for building Ruby blocks.
    #
    class RubyBlock < Base
      ##
      # @return [RubyLint::Definition::RubyObject]
      #
      def build
        definition = new_definition([definitions])

        definitions.list(:lvar).each do |variable|
          definition.add_definition(variable)
        end

        return definition
      end

      ##
      # @param [Array] parents
      # @return [RubyLint::Definition::RubyObject]
      #
      def new_definition(parents)
        return Definition::RubyObject.new(
          :name           => 'block',
          :type           => :block,
          :parents        => parents,
          :update_parents => [:lvar, :ivar, :cvar, :gvar]
        )
      end
    end # RubyBlock
  end # DefinitionBuilder
end # RubyLint

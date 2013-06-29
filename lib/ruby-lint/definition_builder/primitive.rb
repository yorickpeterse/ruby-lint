module RubyLint
  module DefinitionBuilder
    class Primitive < Base
      ##
      # @return [RubyLint::Definition::RubyObject]
      #
      def build
        parents = [RubyLint.definition_for_type(node.type)]

        opts = {
          :type          => node.type,
          :value         => node.children[0],
          :instance_type => :instance,
          :parents       => parents
        }.merge(options)

        return Definition::RubyObject.new(opts)
      end
    end # Primitive
  end # DefinitionBuilder
end # RubyLint

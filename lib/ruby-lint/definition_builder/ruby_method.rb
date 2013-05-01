module RubyLint
  module DefinitionBuilder
    class RubyMethod < Base
      def build
        return new_node([scope])
      end

      def scope
        scope = definitions

        if has_receiver?
          receiver = node.children[0]
          found    = lookup_receiver_definition(receiver)
          scope    = found if found
        end

        return scope
      end

      private

      def lookup_receiver_definition(node)
        if node.constant?
          return resolve_constant_name(node)
        else
          # NOTE: not so sure if it's save to assume there's always a valid
          # RubyObject returned here.
          return definitions.lookup(node.type, node.children[0]).value
        end
      end

      def method_name
        return node.children[name_index].to_s
      end

      def new_node(parents)
        return Definition::RubyMethod.new(
          :name    => method_name,
          :parents => parents
        )
      end

      def has_receiver?
        return node.type == :defs
      end

      def name_index
        return has_receiver? ? 1 : 0
      end
    end # RubyMethod
  end # DefinitionBuilder
end # RubyLint

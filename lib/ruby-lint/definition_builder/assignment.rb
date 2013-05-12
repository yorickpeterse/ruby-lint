module RubyLint
  module DefinitionBuilder
    class Assignment < Base
      TYPE_MAPPING = {
        :lvasgn => :lvar,
        :ivasgn => :ivar,
        :cvdecl => :cvar, # TODO: fix "parser" for this.
        :gvasgn => :gvar,
        :cdecl  => :const # TODO: fix "parser" for this.
      }

      def build
        return new_node
      end

      def scope
        return definitions
      end

      protected

      def variable_type
        return TYPE_MAPPING[node.type]
      end

      def variable_name
        return node.children[0].to_s
      end

      def variable_value
        value_node = node.children[1]
        options    = {
          :type  => value_node.type,
          :value => value_node.children[0]
        }

        if value_node.collection?
          options[:members_as_value] = true
        end

        return Definition::RubyObject.new(options)
      end

      def new_node
        return Definition::RubyObject.new(
          :type             => variable_type,
          :name             => variable_name,
          :value            => variable_value,
          :reference_amount => 1
        )
      end
    end # Assignment
  end # DefinitionBuilder
end # RubyLint

module RubyLint
  module Analyze
    ##
    # The MethodValidation class is an analysis class used for checking if
    # method calls are valid. It checks if a method exists, if the parameters
    # specified are valid, etc.
    #
    class MethodValidation < Iterator
      include Helper::CurrentScope

      ##
      # Hash containing the method definition/call types and their human
      # readable names.
      #
      # @return [Hash]
      #
      METHOD_TYPES = {
        :instance_method => 'instance method',
        :method          => 'method'
      }

      ##
      # @param [RubyLint::Node] node
      #
      def on_method(node)
        definition = Definition::RubyMethod.new_from_node(node)
        type       = definition.definition_type
        name       = definition.name
        scope      = current_scope

        if definition.receiver
          scope = scope.lookup(
            definition.receiver.type,
            definition.receiver.name
          )
        end

        unless scope.has_definition?(type, name)
          error("undefined #{METHOD_TYPES[type]} #{name}", definition)
        end
      end
    end # MethodValidation
  end # Analyze
end # RubyLint

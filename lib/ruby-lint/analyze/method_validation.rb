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
        current = Definition::RubyMethod.new_from_node(node)
        type    = current.definition_type
        name    = current.name
        scope   = current_scope

        if current.receiver
          scope = scope.lookup(current.receiver.type, current.receiver.name)
        end

        unless scope.has_definition?(type, name)
          return error("undefined #{METHOD_TYPES[type]} #{name}", current)
        end

        # Validate the amount of specified arguments.
        # TODO: this should go in its own class.
        existing      = scope.lookup(type, name)
        specified     = current.length_of(:parameters)
        minimum       = existing.length_of(:parameters)
        maximum       = minimum
        expected_text = minimum.to_s

        if existing.optional_parameters
          maximum       += existing.length_of(:optional_parameters)
          expected_text += "..#{maximum}"
        end

        unless specified >= minimum && specified <= maximum
          error(
            "wrong number of arguments (expected #{expected_text} but " \
              "got #{specified})",
            current
          )
        end
      end
    end # MethodValidation
  end # Analyze
end # RubyLint

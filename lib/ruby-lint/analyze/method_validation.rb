module RubyLint
  module Analyze
    ##
    # The MethodValidation class is an analysis class used for checking if
    # method calls are valid. It checks if a method exists, if the arguments
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
        type  = node.method_type
        name  = node.name
        scope = current_scope

        if node.receiver
          scope = scope.lookup(node.receiver.type, node.receiver.name)
        end

        unless scope.has_definition?(type, name)
          return error("undefined #{METHOD_TYPES[type]} #{name}", node)
        end

        # Validate the amount of specified arguments.
        # TODO: this should go in its own class.
        existing      = scope.lookup(type, name)
        specified     = node.gather_arguments(:argument).length
        minimum       = existing.length_of(:arguments)
        maximum       = minimum
        expected_text = minimum.to_s

        if existing.optional_arguments and !existing.optional_arguments.empty?
          maximum       += existing.length_of(:optional_arguments)
          expected_text += "..#{maximum}"
        end

        unless specified >= minimum && specified <= maximum
          error(
            "wrong number of arguments (expected #{expected_text} but " \
              "got #{specified})",
            node
          )
        end
      end
    end # MethodValidation
  end # Analyze
end # RubyLint

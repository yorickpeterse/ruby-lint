module RubyLint
  module Analyze
    ##
    # Analysis class that checks for the use of undefined methods.
    #
    class UndefinedMethods < Iterator
      include Helper::Methods

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
        unless method_defined?(node)
          return error(
            "undefined #{METHOD_TYPES[node.method_type]} #{node.name}",
            node
          )
        end
      end
    end # UndefinedMethods
  end # Analyze
end # RubyLint

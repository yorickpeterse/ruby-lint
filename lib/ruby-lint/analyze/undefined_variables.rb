module RubyLint
  module Analyze
    ##
    # {RubyLint::Analyze::UndefinedVariables} checks for the use of undefined
    # variables (such as instance variables and constants) and adds errors
    # whenever one of these variables is used.
    #
    # This analysis class does *not* check for undefined local variables
    # since those are already handled by {RubyLint::Analyze::UndefinedMethods}.
    #
    class UndefinedVariables < Iterator
      include Helper::CurrentScope

      ##
      # Hash containing the various variable types to add errors for whenever
      # they are used but not defined.
      #
      # @return [Hash]
      #
      VARIABLE_TYPES = {
        :global_variable   => 'global variable',
        :instance_variable => 'instance variable',
        :class_variable    => 'class variable',
        :constant          => 'constant'
      }

      VARIABLE_TYPES.each do |type, label|
        define_method("on_#{type}") do |node|
          unless current_scope.has_definition?(type, node.name)
            error("undefined #{label} #{node.name}", node)
          end
        end
      end

      ##
      # Validates each segment of a constant path in the correct scope.
      #
      # @param [RubyLint::Node] node
      #
      def on_constant_path(node)
        definitions = current_scope

        node.children.each do |segment|
          name = segment.name

          unless definitions.defines?(:constant, name)
            error("undefined constant #{name}", segment)
          end

          definitions = definitions.lookup(:constant, name)
        end
      end
    end # UndefinedVariables
  end # Analyze
end # RubyLint

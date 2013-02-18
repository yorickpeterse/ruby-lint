module RubyLint
  module Analyze
    ##
    # {RubyLint::Analyze::UndefinedVariables} checks for the use of undefined
    # variables (such as local variables and constants) and adds errors
    # whenever one of these variables is used.
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
      # Checks if a method/local variable that is referenced is actually
      # defined.
      #
      # Due to Ruby treating undefined local variables as methods the callback
      # `on_local_variable` can not be used for checking local variables.
      #
      # @param [RubyLint::Node] node
      #
      def on_method(node)
        name            = node.name
        method_exists   = current_scope.has_definition?(call_type, name)
        variable_exists = current_scope.has_definition?(:local_variable, name)

        if !method_exists and !variable_exists
          error("undefined local variable or method #{name}", node)
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

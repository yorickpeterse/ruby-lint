module RubyLint
  module Analyze
    ##
    # {RubyLint::Analyze::UnusedVariables} checks Ruby source code for any
    # unused variables.
    #
    class UnusedVariables < Iterator
      include Helper::CurrentScope

      ##
      # Hash containing the various variable types for which to add warnings
      # and human readable names for these types.
      #
      # @return [Hash]
      #
      VARIABLE_TYPES = {
        :local_variable    => 'local variable',
        :global_variable   => 'global variable',
        :instance_variable => 'instance variable',
        :class_variable    => 'class variable',
        :constant          => 'constant'
      }

      VARIABLE_TYPES.each do |type, label|
        define_method("on_#{type}") do |node|
          variable = current_scope.lookup(node.type, node.children[0])

          if variable and !variable.used? and !variable.imported?
            warning("unused #{label} #{variable.name}", variable)
          end
        end
      end

      ##
      # @param [RubyLint::Node] node
      #
      def on_constant_path(node)
        defs = current_scope

        node.children.each do |segment|
          name  = segment.children[0]
          found = defs.lookup(:constant, name)

          if found and !found.used? and !found.imported?
            warning("unused constant #{name}", segment)
          end

          defs = found
        end
      end
    end # UnusedVariables
  end # Analyze
end # RubyLint

module RubyLint
  module Analyze
    ##
    # The UndefinedVariables class checks for the use of undefined variables
    # (such as instance variables and constants). The order of definition and
    # use of a variable does not matter.
    #
    # This analysis class does *not* check for undefined local variables. Ruby
    # treats these as method calls and as result they are handled by
    # {RubyLint::Analyze::UndefinedMethods} instead.
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
          if !current_scope.has_definition?(type, node.name) \
          and !@in_constant_path
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
        definitions       = current_scope
        @in_constant_path = true

        # The first constant check should take data from parent scopes into
        # account. The following segments should not.
        method = :has_definition?

        node.children.each do |segment|
          name = segment.name

          unless definitions.send(method, :constant, name)
            error("undefined constant #{name}", segment)

            break
          end

          definitions = definitions.lookup(:constant, name)
          method      = :defines?
        end
      end

      ##
      # @param [RubyLint::Node] node
      #
      def after_constant_path(node)
        @in_constant_path = false
      end
    end # UndefinedVariables
  end # Analyze
end # RubyLint

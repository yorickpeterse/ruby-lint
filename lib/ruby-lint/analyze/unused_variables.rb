module Rlint
  module Analyze
    ##
    # {Rlint::Analyze::UnusedVariables} is used to check for unused local,
    # instance, class and global variables.
    #
    class UnusedVariables < Rlint::Callback
      include Helper::DefinitionResolver

      ##
      # A short description of this class.
      #
      # @return [String]
      #
      DESCRIPTION = 'Checks for variables that are assigned but unused.'

      ##
      # Hash containing the human readable names for various variable types.
      #
      # @return [Hash]
      #
      HUMAN_READABLE = {
        :local_variable    => 'local variable',
        :instance_variable => 'instance variable',
        :class_variable    => 'class variable',
        :global_variable   => 'global variable'
      }

      ##
      # Array containing the variable callback methods to define.
      #
      # @return [Array]
      #
      UNUSED_VARIABLES = [
        :on_local_variable,
        :on_instance_variable,
        :on_class_variable,
        :on_global_variable
      ]

      UNUSED_VARIABLES.each do |name|
        define_method(name) do |token|
          unused_variables.delete(token.name)
        end
      end

      ##
      # @see Rlint::Callback#initialize
      #
      def initialize(*args)
        super

        @unused_variables = [{}]
      end

      ##
      # Called when a new scope is found.
      #
      def on_new_scope
        @unused_variables << {}
      end

      ##
      # Called after a new scope has ended.
      #
      def after_new_scope
        # Add the warnings for all the unused variables.
        unused_variables.each do |name, token|
          readable = HUMAN_READABLE[token.type]

          warning(
            "assigned but unused #{readable} #{token.name}",
            token.line,
            token.column
          )
        end

        @unused_variables.pop
      end

      ##
      # Called when a variable is assigned.
      #
      # @param [Rlint::Token::AssignmentToken] token
      #
      def on_assignment(token)
        unused_variables[token.name] = token
      end

      private

      ##
      # Returns the Hash to use for storing unused variables for the current
      # scope.
      #
      # @return [Hash]
      #
      def unused_variables
        return @unused_variables[-1]
      end
    end # UnusedVariables
  end # Analyze
end # Rlint

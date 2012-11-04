module Rlint
  module Helper
    ##
    # {Rlint::Helper::Scoping} is a helper module that can be used to more
    # easily access scoping related information in subclasses of
    # {Rlint::Callback}.
    #
    # Note that unlike {Rlint::Helper::ScopeResolver} this method does not
    # automatically update the `@scopes` array mentioned below, it merely
    # creates the required variables and provides a few helper methods.
    #
    # ## Methods
    #
    # This module provides two methods:
    #
    # * scope: a method that can be used to retrieve the current
    #   scope/definition.
    # * resolve_definition: a method that can be used to retrieve the
    #   scope/definition for the last constant in a constant path.
    #
    # ## Variables
    #
    # The following instance variables are created upon initializing a class
    # that includes this module:
    #
    # * `@scopes`: an array that should be updated with instance of
    #   {Rlint::Definition} based on the current scope.
    # * `@namespace`: array containing the constant names for the current
    #   namespace.
    #
    # The following keys are set in the `@storage` instance variable:
    #
    # * `:scope`: an instance of {Rlint::Scope} that will contain the
    #   definition list of the current block of code that's being analyzed.
    #
    module Scoping
      ##
      # @see Rlint::Callback#initialize
      #
      def initialize(*args)
        super

        @scopes    = []
        @namespace = []

        unless @storage[:scope].is_a?(Scope)
          @storage[:scope] = Scope.new(nil, true, true)
        end
      end

      private

      ##
      # Returns the scope/definition for the last segment in the specified
      # constant path.
      #
      # @param  [Array] path The constant path.
      # @return [Rlint::Definition]
      #
      def resolve_definition(path)
        current = scope

        path.each do |segment|
          found   = current.lookup(:constant, segment)
          current = found if found
        end

        return current
      end

      ##
      # Returns the current scope. This method is primarily used to make the
      # code in this class a bit more pleasant to read.
      #
      # @return [Rlint::Scope]
      #
      def scope
        return !@scopes.empty? ? @scopes[-1] : @storage[:scope]
      end
    end # Scoping
  end # Helper
end # Rlint

module Rlint
  module Helper
    ##
    # {Rlint::Helper::ScopeResolver} is a helper module that can be used to
    # work with scoping information similar to {Rlint::Helper::Scoping}.
    #
    # This module depends on {Rlint::Helper::Scoping} and will include it
    # automatically.
    #
    # ## Methods
    #
    # This module defines a set of methods that are called before and after a
    # method, class or module is defined. These methods take care of retrieving
    # the scope for each definition.
    #
    # These methods will also call two special callback methods that make it
    # easier to run code whenever the scope changes:
    #
    # * `on_new_scope`: called when a new scope has been set.
    # * `after_new_scope`: called when the code has reached the end of the
    #   current scope.
    #
    # Using these methods classes including this module don't have to redefine
    # methods such as `on_class` (unless explicitly needed of course). Both of
    # these methods are called *after* the current scope has been updated.
    #
    module ScopeResolver
      include Scoping

      ##
      # Called before processing all the tokens.
      #
      def on_start
        call_method(:on_new_scope)
      end

      ##
      # Called after all the tokens have been processed.
      #
      def on_finish
        call_method(:after_new_scope)
      end

      ##
      # Sets the scope for the current method definition.
      #
      # @param [Rlint::Token::MethodDefinitionToken] token
      #
      def on_method_definition(token)

        call_method(:on_new_scope)
      end

      ##
      # Resets the scope back to the one used before the method definition.
      #
      # @see Rlint::Helper::ScopeResolver#on_method_definition
      #
      def after_method_definition(token)

        call_method(:after_new_scope)
      end

      ##
      # Sets the scope for the current class.
      #
      # @param [Rlint::Token::ClassToken] token
      #
      def on_class(token)

        call_method(:on_new_scope)
      end

      ##
      # Resets the scope back to the one used before the class definition.
      #
      # @see Rlint::Helper::ScopeResolver#on_class
      #
      def after_class(token)

        call_method(:after_new_scope)
      end

      ##
      # Sets the scope for the current module.
      #
      # @param [Rlint::Token::Token] token
      #
      def on_module(token)

        call_method(:on_new_scope)
      end

      ##
      # Resets the scope back to the one used before the module definition.
      #
      # @see Rlint::Helper::ScopeResolver#on_module
      #
      def after_module(token)

        call_method(:after_new_scope)
      end

      private

      ##
      # Calls the specified method if it exists.
      #
      # @param [String|Symbol] method The name of the method to call.
      # @param [Array] args Array of arguments to pass to the method that is
      #  being called.
      # @return [Mixed]
      #
      def call_method(method, *args)
        return send(method, *args) if respond_to?(method)
      end
    end # ScopeResolver
  end # Helper
end # Rlint

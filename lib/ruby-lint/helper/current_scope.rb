module RubyLint
  module Helper
    ##
    # {RubyLint::Helper::CurrentScope} is a helper module that makes it easier
    # to retrieve the current scope in callback methods. Instead of having to
    # manually retrieve the scope to use based on the current node all you have
    # to do is include this module and call `current_scope`.
    #
    # ## Inheritance
    #
    # Due to this module defining a few common callback methods such as
    # `on_class` you should **always** call `super` if you override these
    # methods in a class. For example, this will prevent the helper from
    # working properly:
    #
    #     class MyIterator < RubyLint::Iterator
    #       include RubyLint::Helper::CurrentScope
    #
    #       def on_class(node)
    #         # ...
    #       end
    #     end
    #
    # This however will not:
    #
    #     class MyIterator < RubyLint::Iterator
    #       include RubyLint::Helper::CurrentScope
    #
    #       def on_class(node)
    #         super
    #
    #         # ...
    #       end
    #     end
    #
    module CurrentScope
      ##
      # @see RubyLint::Iterator#initialize
      #
      def initialize(*args)
        super

        @scopes = []
      end

      ##
      # Array containing the callback names for which a new scope should be
      # created.
      #
      # @return [Array<Symbol>]
      #
      SCOPES = [
        :block,
        :class,
        :method_definition,
        :module,
        :root,
        :sclass
      ]

      SCOPES.each do |type|
        define_method("on_#{type}") do |node|
          set_current_scope(node)
        end

        define_method("after_#{type}") do |node|
          set_previous_scope
        end
      end

      ##
      # Returns the current scope.
      #
      # @return [RubyLint::Definition::RubyObject]
      #
      def current_scope
        return @scopes[-1]
      end

      ##
      # Sets the current scope to the definition associated with the given
      # node.
      #
      # @param [RubyLint::Node] node
      #
      def set_current_scope(node)
        @scopes << associated_definition(node)
      end

      ##
      # Sets the current scope back to the previous one.
      #
      def set_previous_scope
        @scopes.pop
      end
    end # CurrentScope
  end # Helper
end # RubyLint

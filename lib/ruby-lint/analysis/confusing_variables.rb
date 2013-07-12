module RubyLint
  module Analysis
    ##
    # The {RubyLint::Analysis::ConfusingVariables} class checks for the use of
    # cases where particular variable names could lead to unexpected/confusing
    # behaviour such as the following example:
    #
    #     class Example
    #       def number
    #         return 10
    #       end
    #
    #       def another_number
    #         unless number
    #           number = 20
    #         end
    #
    #         return number
    #       end
    #     end
    #
    # When calling the `another_number` method one might expect `10` to be
    # returned but it will actually return `nil` instead due to Ruby
    # "pre-processing" the variable assignment but never actually executing it
    # (given the statement evaluates to false).
    #
    class ConfusingVariables < Base
      ##
      # The statements to process for triggering the variable overwriting
      # warnings.
      #
      # @return [Array]
      #
      STATEMENTS = [:if, :unless, :while, :until].freeze

      ##
      # Method types to use for triggering the warnings.
      #
      # @return [Array]
      #
      METHOD_TYPES = [:def, :defs].freeze

      ##
      # @see RubyLint::Analysis::Base#after_initialize
      #
      def after_initialize
        super

        @statement_nesting = 0
        @method_nesting    = 0
      end

      STATEMENTS.each do |statement|
        define_method("on_#{statement}") do |node|
          @statement_nesting += 1
        end

        define_method("after_#{statement}") do |node|
          @statement_nesting -= 1
        end
      end

      METHOD_TYPES.each do |type|
        define_method("on_#{type}") do |node|
          @method_nesting += 1
        end

        define_method("after_#{type}") do |node|
          @method_nesting -= 1
        end
      end

      ##
      # @param [RubyLint::AST::Node] node
      #
      def on_lvasgn(node)
        return unless @statement_nesting > 0 && @method_nesting > 0

        name   = node.name
        method = current_scope.lookup(current_scope.method_call_type, name)
        lvar   = current_scope.lookup(:lvar, name)

        if method or lvar
          warning(
            'given the statement evaluates to false this variable will be ' \
              'overwritten with nil regardless of the default value',
            node
          )
        end
      end
    end # ConfusingVariables
  end # Analysis
end # RubyLint

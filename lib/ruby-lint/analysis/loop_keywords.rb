module RubyLint
  module Analysis
    ##
    # Analysis class that checks if certain keywords are used inside a
    # block/loop or not. For example, the following is not valid Ruby code:
    #
    #     next
    #
    # But the following is valid:
    #
    #     [10, 20].each do |n|
    #       next
    #     end
    #
    # The following isn't valid either:
    #
    #     def foo
    #       next
    #     end
    #
    # See {KEYWORDS} for a list of the keywords that can only be used inside a
    # loop.
    #
    class LoopKeywords < Base
      register 'loop_keywords'

      def after_initialize
        @loop_nesting = 0
        super
      end

      ##
      # List of keywords that can only be used inside a loop.
      #
      # @return [Array]
      #
      KEYWORDS = [:next, :break]

      ##
      # List of statements that do allow the use of the various keywords.
      #
      # @return [Array]
      #
      STATEMENTS = [:while, :until, :for]

      KEYWORDS.each do |kw|
        define_method("on_#{kw}") { |node| verify_keyword(kw, node) }
      end

      STATEMENTS.each do |statement|
        define_method("on_#{statement}") do
          @loop_nesting += 1
        end

        define_method("after_#{statement}") do
          @loop_nesting -= 1
        end
      end

      ##
      # @param [Symbol] keyword
      # @param [RubyLint::AST::Node] node
      #
      def verify_keyword(keyword, node)
        if current_scope.type != :block and @loop_nesting.zero?
          error("#{keyword} can only be used inside a loop/block", node)
        end
      end
    end # BlockKeywords
  end # Analysis
end # RubyLint

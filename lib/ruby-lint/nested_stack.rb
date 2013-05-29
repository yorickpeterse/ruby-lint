module RubyLint
  class NestedStack
    def initialize
      @values = []
    end

    def add_stack
      @values << []
    end

    def push?
      return !@values.empty?
    end

    def push(value)
      @values.last << value
    end

    def pop
      return @values.pop
    end
  end # NestedStack
end # RubyLint

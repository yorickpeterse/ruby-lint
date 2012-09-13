require File.expand_path('../../helper', __FILE__)

describe 'Rlint::Iterator' do
  it 'Iterate over a simple AST' do
    code = <<-CODE
number = 10
number
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    callback = Class.new(Rlint::Callback) do
      attr_reader :assigned
      attr_reader :referenced

      def on_assignment(token)
        @assigned = true
      end

      def on_local_variable(token)
        @referenced = true
      end
    end

    iterator.bind(callback)

    iterator.iterate(tokens)

    iterator.callbacks[0].assigned.should   == true
    iterator.callbacks[0].referenced.should == true
  end

  it 'Iterate over a multi dimensional AST' do
    code = <<-CODE
class Foo
  def initialize
    @number = 10
  end
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :class_name
      attr_reader :method_name
      attr_reader :assigned

      def on_class(token)
        @class_name = token.name[0]
      end

      def on_method_definition(token)
        @method_name = token.name
      end

      def on_assignment(token)
        @assigned = true
      end
    end

    iterator.bind(callback)

    iterator.iterate(tokens)

    iterator.callbacks[0].class_name.should  == 'Foo'
    iterator.callbacks[0].method_name.should == 'initialize'
    iterator.callbacks[0].assigned.should    == true
  end

  it 'Call an event after iterating over a node' do
    code = <<-CODE
def some_method
  return 10
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :before
      attr_reader :after

      def on_method_definition(token)
        @before = token.name
      end

      def after_method_definition(token)
        @after = token.name
      end
    end

    iterator.bind(callback)
    iterator.iterate(tokens)

    iterator.callbacks[0].before.should == 'some_method'
    iterator.callbacks[0].after.should  == 'some_method'
  end
end

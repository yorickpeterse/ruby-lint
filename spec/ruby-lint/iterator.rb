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

    iterator.run(tokens)

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

    iterator.run(tokens)

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
    iterator.run(tokens)

    iterator.callbacks[0].before.should == 'some_method'
    iterator.callbacks[0].after.should  == 'some_method'
  end

  it 'Iterate over a begin/rescue statement' do
    code = <<-CODE
begin
  raise
rescue RuntimeError => e
  puts 'runtime error!'
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :method_names
      attr_reader :exception
      attr_reader :exception_var

      def initialize(*args)
        super

        @method_names = []
      end

      def on_method(token)
        @method_names << token.name
      end

      def on_constant(token)
        @exception = token.name
      end

      def on_identifier(token)
        @exception_var = token.name
      end
    end

    iterator.bind(callback)
    iterator.run(tokens)

    obj = iterator.callbacks[0]

    obj.method_names.should  == ['raise', 'puts']
    obj.exception.should     == 'RuntimeError'
    obj.exception_var.should == 'e'
  end

  it 'Iterate over an if statement' do
    code = <<-CODE
a, b, c, d, e, f = [1, 2, 3, 4, 5, 6]

if a == b
  first
elsif c == d
  second
elsif e == f
  third
else
  fourth
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :variables
      attr_reader :methods

      def initialize(*args)
        super

        @variables = []
        @methods   = []
      end

      def on_local_variable(token)
        @variables << token.name
      end

      def on_method(token)
        @methods << token.name
      end
    end

    iterator.bind(callback)
    iterator.run(tokens)

    obj = iterator.callbacks[0]

    obj.variables.should == %w{a b c d e f}
    obj.methods.should   == %w{first second third fourth}
  end

  it 'Iterate over a case statement' do
    code = <<-CODE
case number
when 10
  first
when 20
  second
when 30
  third
else
  fourth
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :methods
      attr_reader :numbers

      def initialize(*args)
        super

        @methods = []
        @numbers = []
      end

      def on_method(token)
        @methods << token.name
      end

      def on_integer(token)
        @numbers << token.value
      end
    end

    iterator.bind(callback)
    iterator.run(tokens)

    obj = iterator.callbacks[0]

    obj.numbers.should == %w{10 20 30}
    obj.methods.should == %w{number first second third fourth}
  end

  it 'Iterate over a for loop' do
    code = <<-CODE
for key, value in {:name => 'Ruby'}
  puts key
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :symbol
      attr_reader :string
      attr_reader :names

      def initialize(*args)
        super

        @names = []
      end

      def on_local_variable(token)
        @names << token.name
      end

      def on_identifier(token)
        @names << token.name
      end

      def on_symbol(token)
        @symbol = token.name
      end

      def on_string(token)
        @string = token.value
      end
    end

    iterator.bind(callback)
    iterator.run(tokens)

    obj = iterator.callbacks[0]

    obj.symbol.should == 'name'
    obj.string.should == 'Ruby'
    obj.names.should  == %w{key value key}
  end

  it 'Iterate over a while statement' do
    code = <<-CODE
while foo == 10
  puts 20
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :numbers
      attr_reader :methods

      def initialize(*args)
        super

        @numbers = []
        @methods = []
      end

      def on_identifier(token)
        @methods << token.name
      end

      def on_method(token)
        @methods << token.name
      end

      def on_integer(token)
        @numbers << token.value
      end
    end

    iterator.bind(callback)
    iterator.run(tokens)

    obj = iterator.callbacks[0]

    obj.methods.should == %w{foo puts}
    obj.numbers.should == %w{10 20}
  end

  it 'Iterate over a method definition' do
    code = <<-CODE
def foobar(required, optional = 10, *rest, more, &block)
  return 20
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :variables
      attr_reader :numbers

      def initialize(*args)
        super

        @variables = []
        @numbers   = []
      end

      def on_local_variable(token)
        @variables << token.name
      end

      def on_integer(token)
        @numbers << token.value
      end
    end

    iterator.bind(callback)
    iterator.run(tokens)

    obj = iterator.callbacks[0]

    obj.numbers.should   == %w{10 20}
    obj.variables.should == %w{required optional rest more block}
  end

  it 'Iterate over a method call' do
    tokens   = Rlint::Parser.new('puts "Foo", "Bar"').parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :params

      def initialize(*args)
        @params = []
      end

      def on_string(token)
        @params << token.value
      end
    end

    iterator.bind(callback)
    iterator.run(tokens)

    obj = iterator.callbacks[0]

    obj.params.should == %w{Foo Bar}
  end

  it 'Call an event before and after iterating over all nodes' do
    code = <<-CODE
class Person
  def initialize
    @name = 'Matz'
  end
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new
    callback = Class.new(Rlint::Callback) do
      attr_reader :start
      attr_reader :finish

      def initialize(*args)
        super

        @start  = 0
        @finish = 0
      end

      def on_start
        @start += 1
      end

      def on_finish
        @finish += 1
      end
    end

    iterator.bind(callback)
    iterator.run(tokens)

    iterator.callbacks[0].start.should  == 1
    iterator.callbacks[0].finish.should == 1
  end

  it 'Share data between callback classes' do
    code = <<-CODE
def example_method
  return 10
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    setter = Class.new(Rlint::Callback) do
      def on_method_definition(token)
        @storage[:method_name] = token.name
      end
    end

    getter = Class.new(Rlint::Callback) do
      attr_reader :storage
    end

    iterator.bind(setter)
    iterator.bind(getter)
    iterator.run(tokens)

    iterator.callbacks[1].storage.class.should         == Hash
    iterator.callbacks[1].storage[:method_name].should == 'example_method'
  end
end

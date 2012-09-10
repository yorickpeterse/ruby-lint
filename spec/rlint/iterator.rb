require File.expand_path('../../helper', __FILE__)

describe 'Rlint::Iterator' do
  it 'Iterate over a simple AST using blocks for callbacks' do
    code = <<-CODE
number = 10
number
    CODE

    tokens     = Rlint::Parser.new(code).parse
    iterator   = Rlint::Iterator.new(tokens)
    assigned   = false
    referenced = false
    files      = []

    iterator.bind(:assignment) do |token, file|
      assigned = true
      files    << file
    end

    iterator.bind(:local_variable) do |token, file|
      referenced = true
      files      << file
    end

    iterator.iterate

    assigned.should   == true
    referenced.should == true
    files.should      == ['(rlint)', '(rlint)']
  end

  it 'Iterate over a multi dimensional AST using blocks for callbacks' do
    code = <<-CODE
class Foo
  def foo
    return 10
  end
end
    CODE

    tokens       = Rlint::Parser.new(code).parse
    iterator     = Rlint::Iterator.new(tokens)
    class_name   = nil
    method_name  = nil
    return_value = nil

    iterator.bind(:class) do |token|
      class_name = token.name[0]
    end

    iterator.bind(:method_definition) do |token|
      method_name = token.name
    end

    iterator.bind(:return) do |token|
      return_value = token.value[0].value
    end

    iterator.iterate

    class_name.should   == 'Foo'
    method_name.should  == 'foo'
    return_value.should == '10'
  end

  it 'Bind a class using a global callback method to an iterator event' do
    tokens   = Rlint::Parser.new('number = 10').parse
    iterator = Rlint::Iterator.new(tokens)

    callback_class = Class.new do
      attr_reader :assigned

      def call(token, file)
        @assigned = true
      end
    end

    iterator.bind_class(:assignment, callback_class)

    iterator.iterate

    iterator.callbacks[:assignment][0].assigned.should == true
  end

  it 'Bind a class using a specific callback method to an iterator event' do
    tokens   = Rlint::Parser.new('number = 10').parse
    iterator = Rlint::Iterator.new(tokens)

    callback_class = Class.new do
      attr_reader :assigned

      def on_assignment(token, file)
        @assigned = true
      end
    end

    iterator.bind_class(:assignment, callback_class)

    iterator.iterate

    iterator.callbacks[:assignment][0].assigned.should == true
  end
end

require File.expand_path('../../../helper', __FILE__)

describe 'Building method definitions' do
  describe 'scoping method definitions' do
    should 'process a global method' do
      defs    = build_definitions('def example; end')
      example = defs.lookup(:instance_method, 'example')

      example.is_a?(RubyLint::Definition::RubyMethod).should == true

      example.type.should            == :method_definition
      example.method_type.should == :instance_method
      example.name.should            == 'example'
    end

    should 'process a nested method' do
      code = <<-CODE
def first
  def second
  end
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:instance_method, 'first')

      first.is_a?(RubyLint::Definition::RubyMethod).should == true

      first.lookup(:instance_method, 'second') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true

      defs.lookup(:instance_method, 'second').nil?.should == true
    end

    should 'process a global and nested method' do
      code = <<-CODE
def first
  def second
  end
end

def third
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:instance_method, 'first')

      first.lookup(:instance_method, 'second') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true

      first.lookup(:instance_method, 'second') \
        .lookup(:instance_method, 'third') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true

      defs.lookup(:instance_method, 'third') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true
    end
  end

  should 'process a definition with a variable assignment in the body' do
    code = <<-CODE
def example
  number = 10
end
    CODE

    defs = build_definitions(code)

    defs.lookup(:instance_method, 'example') \
      .lookup(:local_variable, 'number') \
      .is_a?(RubyLint::Definition::RubyObject) \
      .should == true

    defs.lookup(:local_variable, 'number').nil?.should == true
  end

  should 'process a definition with a receiver' do
    code = <<-CODE
def String.example
  number = 10
end
    CODE

    defs = build_definitions(code)

    defs.lookup(:constant, 'String') \
      .lookup(:method, 'example') \
      .is_a?(RubyLint::Definition::RubyMethod) \
      .should == true

    defs.lookup(:method, 'example').nil?.should          == true
    defs.lookup(:instance_method, 'example').nil?.should == true
  end

  describe 'creating variables for method parameters' do
    should 'create local variables' do
      code = <<-CODE
def example(number)
  return number
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example') \
        .lookup(:local_variable, 'number') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true
    end

    should 'allow the assignment using parameters' do
      code = <<-CODE
def example(number)
  other_number = number
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example') \
        .lookup(:local_variable, 'other_number') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true
    end
  end

  describe 'exporting variables' do
    should 'export variables to the outer scope' do
      code = <<-CODE
def example
  @number = 10
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_variable, '@number') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true
    end
  end
end

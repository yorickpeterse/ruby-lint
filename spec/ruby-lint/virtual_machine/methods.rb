require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'defining methods' do
    should 'process a definition with a variable assignment in the body' do
      code = <<-CODE
  def example
    number = 10
  end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example') \
        .lookup(:lvar, 'number') \
        .is_a?(ruby_object) \
        .should == true

      defs.lookup(:lvar, 'number').nil?.should == true
    end

    should 'process a definition with a receiver' do
      code = <<-CODE
  def String.example
    number = 10
  end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'String') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == true

      defs.lookup(:method, 'example').nil?.should          == true
      defs.lookup(:instance_method, 'example').nil?.should == true
    end
  end

  describe 'scoping method definitions' do
    should 'process a global method' do
      defs    = build_definitions('def example; end')
      example = defs.lookup(:instance_method, 'example')

      example.is_a?(ruby_method).should == true

      example.type.should == :instance_method
      example.name.should == 'example'
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

      first.is_a?(ruby_method).should == true

      first.lookup(:instance_method, 'second') \
        .is_a?(ruby_method) \
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
        .is_a?(ruby_method) \
        .should == true

      first.lookup(:instance_method, 'second') \
        .lookup(:instance_method, 'third') \
        .is_a?(ruby_method) \
        .should == true

      defs.lookup(:instance_method, 'third') \
        .is_a?(ruby_method) \
        .should == true
    end
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
        .lookup(:lvar, 'number') \
        .is_a?(ruby_object) \
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
        .lookup(:lvar, 'other_number') \
        .is_a?(ruby_object) \
        .should == true
    end

    should 'take all argument types into account' do
      code = <<-CODE
def example(required, optional = 10, *splat, more, &block)
  _required = required
  _optional = optional
  _splat    = splat
  _more     = more
  _block    = block
end
      CODE

      defs   = build_definitions(code)
      method = defs.lookup(:instance_method, 'example')

      %w{_required _splat _more _block}.each do |name|
        method.lookup(:lvar, name).is_a?(ruby_object).should == true
      end

      method.lookup(:lvar, '_optional').value.value.should == 10
    end

    should 'store arguments under special types' do
      code = <<-CODE
def example(required, optional = 10, *splat, more, &block)
end
      CODE

      defs   = build_definitions(code)
      method = defs.lookup(:instance_method, 'example')
      types  = [
        [:arg, 'required'],
        [:optarg, 'optional'],
        [:restarg, 'splat'],
        [:arg, 'more'],
        [:blockarg, 'block']
      ]

      types.each do |(type, name)|
        method.lookup(type, name).is_a?(ruby_object).should == true
      end
    end
  end

  describe 'exporting variables out of method scopes' do
    should 'export variables to the outer scope' do
      code = <<-CODE
def example
  @number = 10
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:ivar, '@number') \
        .is_a?(ruby_object) \
        .should == true
    end
  end
end

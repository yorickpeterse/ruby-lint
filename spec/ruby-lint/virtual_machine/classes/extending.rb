require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'extending classes' do
    should 'set the default parent class' do
      defs = build_definitions('class First; end')

      defs.lookup(:const, 'First') \
        .lookup(:method, 'new') \
        .is_a?(ruby_method) \
        .should == true
    end

    should 'extend a class using a parent' do
      code = <<-CODE
class First
  def example
  end
end

class Second < First
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Second') \
        .parents \
        .map(&:name) \
        .should == ['First', 'root']

      defs.lookup(:const, 'Second') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    should 'extend a class using a constant path as the parent class' do
      code = <<-CODE
class First
  class Second
    def example
    end
  end
end

class Third < First::Second
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Third') \
        .parents \
        .map(&:name) \
        .should == ['Second', 'root']

      defs.lookup(:const, 'Third') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    should 'extend a class using a variable' do
      code = <<-CODE
parent = String

class MyString < parent
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'MyString').parents \
        .should == [defs.lookup(:const, 'String')]
    end

    should 'inherit from Object when importing String' do
      defs = build_definitions('String')

      defs.lookup(:const, 'String') \
        .lookup(:method, 'new') \
        .is_a?(ruby_method) \
        .should == true
    end
  end
end

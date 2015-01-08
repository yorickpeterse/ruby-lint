require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'extending classes' do
    it 'sets the default parent class' do
      defs = build_definitions('class First; end')

      defs.lookup(:const, 'First') \
        .lookup(:method, 'new') \
        .is_a?(ruby_method) \
        .should == true
    end

    it 'extends a class using a parent' do
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

    it 'extends a class using a constant path as the parent class' do
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

    it 'extends a class using a variable' do
      code = <<-CODE
parent = String

class MyString < parent
end
      CODE

      defs = build_definitions(code)

      parents = defs.lookup(:const, 'MyString').parents

      parents.length.should                                  == 2
      parents.include?(defs.lookup(:const, 'String')).should == true
    end

    # This is to ensure that ruby-lint doesn't blow itself up when trying to
    # use a constant as a parent class that can't be found (e.g. a user defined
    # class).
    #
    # See https://github.com/YorickPeterse/ruby-lint/issues/32 for the
    # motivation behind this fix/test.
    it 'inherits Object as a fallback when the parent can not be found' do
      code = <<-CODE
class Foo < Bar
end
      CODE

      defs    = build_definitions(code)
      parents = defs.lookup(:const, 'Foo').parents

      parents.length.should == 2

      parents.include?(defs.lookup(:const, 'Object')).should == true
    end

    it 'inherits from Object when importing String' do
      defs = build_definitions('String')

      defs.lookup(:const, 'String') \
        .lookup(:method, 'new') \
        .is_a?(ruby_method) \
        .should == true
    end
  end
end
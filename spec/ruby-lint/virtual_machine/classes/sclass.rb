require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'using sclass blocks' do
    should 'define a class method using `class << self`' do
      code = <<-CODE
class First
  class << self
    def example
    end
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'First') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    should 'define a class method using `class << self` in the global scope' do
      code = <<-CODE
class << self
  def example
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:method, 'example').is_a?(ruby_method).should == true
    end

    should 'define a class method using `class << String`' do
      code = <<-CODE
class << String
  def example
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'String') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    should 'define a class method using `class << String` nested in a class' do
      code = <<-CODE
class First
  class << String
    def example
    end
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'First') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == false

      defs.lookup(:const, 'String') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    should 'define an instance method using `class << variable`' do
      code = <<-CODE
variable = "foo"

class << variable
  def example
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:lvar, 'variable') \
        .value \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_object) \
        .should == true
    end
  end
end

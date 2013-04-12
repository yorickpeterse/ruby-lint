require File.expand_path('../../../helper', __FILE__)

describe 'Building class definitions' do
  describe 'scoping definitions' do
    should 'process a global class' do
      defs    = build_definitions('class Example; end')
      example = defs.lookup(:constant, 'Example')

      example.is_a?(ruby_object).should == true

      example.type.should == :class
      example.name.should == 'Example'
    end

    should 'process a nested class' do
      code = <<-CODE
class First
  class Second
  end
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:constant, 'First')

      first.is_a?(ruby_object).should == true

      defs.lookup(:constant, 'Second').nil?.should == true

      first.lookup(:constant, 'Second') \
        .is_a?(ruby_object) \
        .should == true
    end

    should 'process a global and nested class' do
      code = <<-CODE
class First
  class Second
  end
end

class Third
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:constant, 'First')

      first.lookup(:constant, 'Second').is_a?(ruby_object).should == true
      first.lookup(:constant, 'Third').is_a?(ruby_object).should == true

      first.lookup(:constant, 'Second') \
        .lookup(:constant, 'Third') \
        .is_a?(ruby_object) \
        .should == true

      defs.lookup(:constant, 'Third').is_a?(ruby_object).should == true
    end
  end

  describe 'redefining classes' do
    should 'update a class when it is redefined' do
      code = <<-CODE
class First
end

class First
  def example
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:constant, 'First') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end
  end

  describe 'extending classes' do
    should 'set the default parent class' do
      defs = build_definitions('class First; end')

      defs.lookup(:constant, 'First') \
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

      defs.lookup(:constant, 'Second') \
        .parents \
        .map(&:name) \
        .should == ['First', 'root']

      defs.lookup(:constant, 'Second') \
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

      defs.lookup(:constant, 'Third') \
        .parents \
        .map(&:name) \
        .should == ['Second', 'root']

      defs.lookup(:constant, 'Third') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end
  end

  describe 'defining class methods' do
    should 'define a single class method using `self`' do
      code = <<-CODE
class Example
  def self.class_method
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:constant, 'Example') \
        .lookup(:method, 'class_method') \
        .is_a?(ruby_method) \
        .should == true
    end
  end

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

      defs.lookup(:constant, 'First') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    should 'define a class method using `class << String`' do
      code = <<-CODE
class << String
  def example
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:constant, 'String') \
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

      defs.lookup(:constant, 'First') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == false

      defs.lookup(:constant, 'String') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end
  end

  describe 'inheriting definitions' do
    should 'inherit from Object when importing String' do
      defs = build_definitions('String')

      defs.lookup(:constant, 'String') \
        .lookup(:method, 'new') \
        .is_a?(ruby_method) \
        .should == true
    end
  end
end

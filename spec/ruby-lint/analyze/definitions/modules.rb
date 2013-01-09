require File.expand_path('../../../../helper', __FILE__)

describe 'Building module definitions' do
  describe 'scoping definitions' do
    should 'process a global module' do
      defs    = build_definitions('module Example; end')
      example = defs.lookup(:constant, 'Example')

      example.is_a?(RubyLint::Definition::RubyObject).should == true

      example.type.should == :module
      example.name.should == 'Example'
    end

    should 'process a nested module' do
      code = <<-CODE
module First
  module Second
  end
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:constant, 'First')

      first.is_a?(RubyLint::Definition::RubyObject).should == true

      defs.lookup(:constant, 'Second').nil?.should == true

      first.lookup(:constant, 'Second') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true
    end

    should 'process a global and nested module' do
      code = <<-CODE
module First
  module Second
  end
end

module Third
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:constant, 'First')

      first.lookup(:constant, 'Second') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true

      # Due to "First" and "Third" being defined in the same scope the "Third"
      # constant is available inside the "First" module.
      first.lookup(:constant, 'Third') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true

      first.lookup(:constant, 'Second') \
        .lookup(:constant, 'Third') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true

      defs.lookup(:constant, 'Third') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true
    end
  end

  describe 'redefining modules' do
    should 'update a module when it is redefined' do
      code = <<-CODE
module First
end

module First
  def example
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:constant, 'First') \
        .lookup(:instance_method, 'example') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true
    end
  end

  describe 'including modules' do
    should 'include a module' do
      code = <<-CODE
module First
  def example
  end
end

module Second
  include First
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:constant, 'Second') \
        .lookup(:instance_method, 'example') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true
    end

    should 'extend a module' do
      code = <<-CODE
module First
  def example
  end
end

module Second
  extend First
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:constant, 'Second') \
        .lookup(:method, 'example') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true
    end

    should 'include a module using a constant path' do
      code = <<-CODE
module First
  module Second
    def example
    end
  end
end

module Third
  include First::Second
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:constant, 'Third') \
        .lookup(:instance_method, 'example') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true
    end

    should 'include a module using a variable' do
      code = <<-CODE
module First
  def example
  end
end

module Second
  first = First
  include first
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:constant, 'Second') \
        .lookup(:instance_method, 'example') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true
    end
  end
end

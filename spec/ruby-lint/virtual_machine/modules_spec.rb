require 'spec_helper'

describe 'Building module definitions' do
  describe 'scoping definitions' do
    example 'process a global module' do
      defs    = build_definitions('module Example; end')
      example = defs.lookup(:const, 'Example')

      example.is_a?(ruby_object).should == true

      example.type.should == :const
      example.name.should == 'Example'
    end

    example 'process a nested module' do
      code = <<-CODE
module First
  module Second
  end
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:const, 'First')

      first.is_a?(ruby_object).should == true

      defs.lookup(:const, 'Second').nil?.should == true

      first.lookup(:const, 'Second') \
        .is_a?(ruby_object) \
        .should == true
    end

    example 'process a global and nested module' do
      code = <<-CODE
module First
  module Second
  end
end

module Third
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:const, 'First')

      first.lookup(:const, 'Second') \
        .is_a?(ruby_object) \
        .should == true

      # Due to "First" and "Third" being defined in the same scope the "Third"
      # constant is available inside the "First" module.
      first.lookup(:const, 'Third') \
        .is_a?(ruby_object) \
        .should == true

      first.lookup(:const, 'Second') \
        .lookup(:const, 'Third') \
        .is_a?(ruby_object) \
        .should == true

      defs.lookup(:const, 'Third') \
        .is_a?(ruby_object) \
        .should == true
    end
  end

  describe 'redefining modules' do
    example 'update a module when it is redefined' do
      code = <<-CODE
module First
end

module First
  def example
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'First') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end
  end

  describe 'including modules' do
    example 'include a module' do
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

      defs.lookup(:const, 'Second') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    example 'extend a module' do
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

      defs.lookup(:const, 'Second') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    example 'include a module using a constant path' do
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

      defs.lookup(:const, 'Third') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    example 'include a module using a variable' do
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

      defs.lookup(:const, 'Second') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end
  end
end
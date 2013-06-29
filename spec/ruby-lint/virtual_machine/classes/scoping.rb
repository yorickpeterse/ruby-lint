require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'scoping class definitions' do
    should 'process a global class' do
      defs    = build_definitions('class Example; end')
      example = defs.lookup(:const, 'Example')

      example.is_a?(ruby_object).should == true

      example.type.should == :const
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
      first = defs.lookup(:const, 'First')

      first.is_a?(ruby_object).should == true

      defs.lookup(:const, 'Second').nil?.should == true

      first.lookup(:const, 'Second') \
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
      first = defs.lookup(:const, 'First')

      first.lookup(:const, 'Second').is_a?(ruby_object).should == true
      first.lookup(:const, 'Third').is_a?(ruby_object).should == true

      first.lookup(:const, 'Second') \
        .lookup(:const, 'Third') \
        .is_a?(ruby_object) \
        .should == true

      defs.lookup(:const, 'Third').is_a?(ruby_object).should == true
    end
  end
end

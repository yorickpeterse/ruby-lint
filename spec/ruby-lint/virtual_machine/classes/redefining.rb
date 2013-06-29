require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
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

      defs.lookup(:const, 'First') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end
  end
end

require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'defining class methods' do
    should 'define a single class method using `self`' do
      code = <<-CODE
class Example
  def self.class_method
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example') \
        .lookup(:method, 'class_method') \
        .is_a?(ruby_method) \
        .should == true
    end
  end
end

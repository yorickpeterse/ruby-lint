require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
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

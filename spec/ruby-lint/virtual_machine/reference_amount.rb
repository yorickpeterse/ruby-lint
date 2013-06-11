require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'reference counting' do
    should 'count the amount of references for a variable' do
      code = <<-CODE
  number = 10
  number
  number
      CODE

      defs = build_definitions(code)

      defs.lookup(:lvar, 'number').reference_amount.should == 2
    end

    should 'count the amount of references for a constant path' do
      code = <<-CODE
  module A; end
  A::B = 10
  A::B
  A::B
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'A') \
        .lookup(:const, 'B') \
        .reference_amount \
        .should == 2
    end
  end
end

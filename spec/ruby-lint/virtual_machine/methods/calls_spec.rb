require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'evaluating method calls' do
    before :all do
      code = <<-EOF
# @return [String]
def example
  return 'foo'
end

variable = example
      EOF

      @defs = build_definitions(code)
    end

    it 'assigns the correct return value to a local variable' do
      value = @defs.lookup(:lvar, 'variable').value

      value.type.should == :const
      value.name.should == 'String'
    end
  end
end

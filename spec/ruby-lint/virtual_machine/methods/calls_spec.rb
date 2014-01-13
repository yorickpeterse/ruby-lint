require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'evaluating method calls' do
    example 'evaluate a call to a method with a known return type' do
      code = <<-EOF
# @return [String]
def example
  return 'foo'
end

variable = example
      EOF

      defs   = build_definitions(code)
      method = defs.lookup(:instance_method, 'example')
      var    = defs.lookup(:lvar, 'variable').value
      string = defs.lookup(:const, 'String')

      method.return_value.should == string
      var.should                 == string
    end
  end
end

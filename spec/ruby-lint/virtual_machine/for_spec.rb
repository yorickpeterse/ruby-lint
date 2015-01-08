require 'spec_helper'

describe 'Building variable definitions using for loops' do
  it 'creates local variables' do
    code = <<-CODE
for key, value in something

end
    CODE

    defs = build_definitions(code)

    defs.lookup(:lvar, 'key').is_a?(ruby_object).should   == true
    defs.lookup(:lvar, 'value').is_a?(ruby_object).should == true
  end
end
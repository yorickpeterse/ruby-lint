require File.expand_path('../../../helper', __FILE__)

describe 'Building variable definitions using for loops' do
  should 'create local variables' do
    code = <<-CODE
for key, value in something

end
    CODE

    defs = build_definitions(code)

    defs.lookup(:local_variable, 'key').is_a?(ruby_object).should   == true
    defs.lookup(:local_variable, 'value').is_a?(ruby_object).should == true
  end
end

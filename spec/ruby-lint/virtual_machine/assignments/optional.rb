require File.expand_path('../../../../helper', __FILE__)

describe 'Building variable definitions' do
  describe 'optional assignments' do
    should 'process an assignment for an existing variable' do
      code = <<-CODE
number   = 10
number ||= 20
      CODE

      defs = build_definitions(code)

      defs.lookup(:lvar, 'number').value.value.should == '10'
    end

    should 'process an assignment for a non existing variable' do
      defs = build_definitions('number ||= 10')

      defs.lookup(:lvar, 'number').value.value.should == '10'
    end
  end
end

require File.expand_path('../../../../helper', __FILE__)

describe 'Building variable definitions' do
  describe 'optional assignments' do
    should 'assign a non existing local variable' do
      defs = build_definitions('number ||= 10')

      defs.lookup(:lvar, 'number').value.value.should == 10
    end

    should 'not overwrite an existing variable' do
      code = <<-CODE
number   = 10
number ||= 20
      CODE

      defs = build_definitions(code)

      defs.lookup(:lvar, 'number').value.value.should == 10
    end
  end
end

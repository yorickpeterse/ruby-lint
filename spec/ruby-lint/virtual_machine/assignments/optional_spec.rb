require 'spec_helper'

describe 'Building variable definitions' do
  describe 'OR assignments' do
    it 'assigns a non existing local variable' do
      defs = build_definitions('number ||= 10')

      defs.lookup(:lvar, 'number').value.value.should == 10
    end

    it 'does not overwrite an existing variable' do
      code = <<-CODE
number   = 10
number ||= 20
      CODE

      defs = build_definitions(code)

      defs.lookup(:lvar, 'number').value.value.should == 10
    end
  end

  describe 'AND assignments' do
    it 'does not assign a non existing local variable' do
      defs = build_definitions('number &&= 10')

      defs.lookup(:lvar, 'number').nil?.should == true
    end

    it 'overwrites an existing variable' do
      code = <<-CODE
number   = 10
number &&= 20
      CODE

      defs = build_definitions(code)

      defs.lookup(:lvar, 'number').value.value.should == 20
    end
  end
end
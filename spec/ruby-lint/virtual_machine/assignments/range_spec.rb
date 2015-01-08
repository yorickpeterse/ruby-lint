require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'Range definitions' do
    it 'assigns an inclusive range to a variable' do
      defs = build_definitions('numbers = (0..10)')
      val  = defs.lookup(:lvar, 'numbers').value

      val.type.should       == :irange
      val.ruby_class.should == 'Range'
    end

    it 'assigns an exclusive range to a variable' do
      defs = build_definitions('numbers = (0...10)')
      val  = defs.lookup(:lvar, 'numbers').value

      val.type.should       == :erange
      val.ruby_class.should == 'Range'
    end

    it 'associates a Range with the correct built-in definition' do
      defs = build_definitions('numbers = (0...10)')
      val  = defs.lookup(:lvar, 'numbers').value

      val.has_definition?(:instance_method, 'cover?').should == true
    end
  end
end

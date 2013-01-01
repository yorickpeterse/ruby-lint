require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Definition::RubyVariable do
  before do
    @variable = RubyLint::Definition::RubyVariable.new(
      s(:local_variable, 'number'),
      s(:integer, '10')
    )
  end

  should 'return the correct variable name' do
    @variable.name.should == 'number'
  end

  should 'return the variable type' do
    @variable.type.should            == :local_variable
    @variable.local_variable?.should == true
  end

  should 'return the variable value' do
    @variable.value.type.should       == :integer
    @variable.value.value.should      == ['10']
    @variable.value.ruby_class.should == 'Numeric'
  end

  should 'set the parent definitions' do
    var = RubyLint::Definition::RubyVariable.new(
      s(:local_variable, 'number'),
      s(:integer, '10'),
      :parents => [@variable]
    )

    var.parents.length.should == 1
  end

  should 'process constant paths' do
    var = RubyLint::Definition::RubyVariable.new(
      s(
        :constant_path,
        s(:constant, 'First'),
        s(:constant, 'Second'),
        s(:constant, 'Third')
      )
    )

    var.type.should == :constant
    var.name.should == 'Third'

    var.receiver.name.should == 'Second'
    var.receiver.type.should == :constant

    var.receiver.receiver.name.should == 'First'
    var.receiver.receiver.type.should == :constant
  end
end

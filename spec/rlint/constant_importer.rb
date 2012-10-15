require File.expand_path('../../helper', __FILE__)

describe 'Rlint::ConstantImporter' do
  it 'Import methods from the Kernel constant' do
    imported = Rlint::ConstantImporter.import([:Kernel])

    imported.key?('Kernel').should == true

    found = imported['Kernel'].lookup(:method, 'puts')

    found.class.should      == Rlint::Token::MethodDefinitionToken
    found.name.should       == 'puts'
    found.visibility.should == :public

    found.parameters.class.should == Rlint::Token::ParametersToken

    found.parameters.value.class.should  == Array
    found.parameters.value.length.should == 0

    found.parameters.rest.class.should == Rlint::Token::VariableToken
    found.parameters.rest.name.should  == ''
    found.parameters.rest.type.should  == :local_variable
    found.parameters.rest.event.should == :local_variable
  end
end

require File.expand_path('../../helper', __FILE__)

describe 'Rlint::ConstantImporter' do
  it 'Import methods from the Kernel constant' do
    imported = Rlint::ConstantImporter.import([:Kernel])

    imported.key?('Kernel').should == true

    found = imported['Kernel'].lookup(:method, 'puts')

    found.class.should == Rlint::Definition

    found.token.class.should      == Rlint::Token::MethodDefinitionToken
    found.token.name.should       == 'puts'
    found.token.visibility.should == :public

    found.token.parameters.class.should == Rlint::Token::ParametersToken

    found.token.parameters.value.class.should  == Array
    found.token.parameters.value.length.should == 0

    found.token.parameters.rest.class.should == Rlint::Token::VariableToken
    found.token.parameters.rest.name.should  == ''
    found.token.parameters.rest.type.should  == :local_variable
    found.token.parameters.rest.event.should == :local_variable
  end
end

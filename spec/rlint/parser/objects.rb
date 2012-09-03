require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse the assignment of a value to an object attribute' do
    code = <<-CODE
obj = Struct.new(:name).new('Ruby')
obj.name = 'Ruby'
    CODE

    token = Rlint::Parser.new(code).parse[1]

    token.class.should == Rlint::Token::AssignmentToken
    token.name.should  == 'name'

    token.value.class.should == Rlint::Token::Token
    token.value.type.should  == :string
    token.value.value.should == 'Ruby'

    token.receiver.class.should == Rlint::Token::VariableToken
    token.receiver.name.should  == 'obj'
    token.receiver.type.should  == :local_variable
  end
end

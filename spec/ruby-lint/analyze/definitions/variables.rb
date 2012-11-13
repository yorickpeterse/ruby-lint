require File.expand_path('../../../../helper', __FILE__)

describe 'RubyLint::Analyze::Definitions: variables' do
  it 'Build a list of variables defined in the global scope' do
    code = <<-CODE
number   = 10
@number  = 10
@@number = 10
$number  = 10
NUMBER   = 10
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.class.should == RubyLint::Definition

    lvar  = scope.lookup(:local_variable, 'number')
    ivar  = scope.lookup(:instance_variable, '@number')
    cvar  = scope.lookup(:class_variable, '@@number')
    gvar  = scope.lookup(:global_variable, '$number')
    const = scope.lookup(:constant, 'NUMBER')

    lvar.class.should             == RubyLint::Definition
    lvar.token.class.should       == RubyLint::Token::AssignmentToken
    lvar.token.name.should        == 'number'
    lvar.token.type.should        == :local_variable
    lvar.token.value.class.should == RubyLint::Token::Token
    lvar.token.value.type.should  == :integer
    lvar.token.value.value.should == '10'

    ivar.class.should             == RubyLint::Definition
    ivar.token.class.should       == RubyLint::Token::AssignmentToken
    ivar.token.name.should        == '@number'
    ivar.token.type.should        == :instance_variable
    ivar.token.value.class.should == RubyLint::Token::Token
    ivar.token.value.type.should  == :integer
    ivar.token.value.value.should == '10'

    cvar.class.should             == RubyLint::Definition
    cvar.token.class.should       == RubyLint::Token::AssignmentToken
    cvar.token.name.should        == '@@number'
    cvar.token.type.should        == :class_variable
    cvar.token.value.class.should == RubyLint::Token::Token
    cvar.token.value.type.should  == :integer
    cvar.token.value.value.should == '10'

    gvar.class.should             == RubyLint::Definition
    gvar.token.class.should       == RubyLint::Token::AssignmentToken
    gvar.token.name.should        == '$number'
    gvar.token.type.should        == :global_variable
    gvar.token.value.class.should == RubyLint::Token::Token
    gvar.token.value.type.should  == :integer
    gvar.token.value.value.should == '10'

    const.class.should             == RubyLint::Definition
    const.token.class.should       == RubyLint::Token::AssignmentToken
    const.token.name.should        == 'NUMBER'
    const.token.type.should        == :constant
    const.token.value.class.should == RubyLint::Token::Token
    const.token.value.type.should  == :integer
    const.token.value.value.should == '10'
  end

  it 'Build a list of variables defined inside a method' do
    code = <<-CODE
def example_method
  number = 10
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.lookup(:local_variable, 'number').nil?.should == true

    method = scope.lookup(:instance_method, 'example_method')

    method.class.should == RubyLint::Definition

    method.token.class.should      == RubyLint::Token::MethodDefinitionToken
    method.token.name.should       == 'example_method'
    method.token.value.nil?.should == true

    variable = method.lookup(:local_variable, 'number')

    variable.class.should             == RubyLint::Definition
    variable.token.name.should        == 'number'
    variable.token.value.class.should == RubyLint::Token::Token
    variable.token.value.type.should  == :integer
    variable.token.value.value.should == '10'
  end
end

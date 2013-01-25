require File.expand_path('../../../helper', __FILE__)

describe 'Associating AST nodes with definitions' do
  should 'associate AST nodes and their definitions' do
    tokens   = parse('def foobar; end', false)
    iterator = RubyLint::DefinitionsBuilder.new

    iterator.iterate(tokens)

    defs   = iterator.options[:definitions]
    assoc  = iterator.options[:node_definitions]
    method = tokens.children[0]

    assoc.key?(method).should == true
    assoc[method].should      == defs.lookup(:instance_method, 'foobar')
  end
end

require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  should 'associate AST nodes and their definitions' do
    tokens = parse('def foobar; end', false)
    vm     = RubyLint::VirtualMachine.new

    vm.iterate(tokens)

    defs   = vm.definitions
    assoc  = vm.associations
    method = tokens.children[0]

    assoc.key?(method).should == true
    assoc[method].should      == defs.lookup(:instance_method, 'foobar')
  end
end

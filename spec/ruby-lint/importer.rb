require File.expand_path('../../helper', __FILE__)

describe RubyLint::Importer do
  should 'return a hash with the results' do
    defs = RubyLint::Importer.import('Kernel')

    defs.is_a?(RubyLint::Definition::RubyObject).should == true
    defs.imported?.should == true
  end

  should 'import a method' do
    defs = RubyLint::Importer.import('Kernel')

    defs.is_a?(RubyLint::Definition::RubyObject).should == true

    method = defs.lookup(:method, 'puts')

    method.is_a?(RubyLint::Definition::RubyMethod).should == true

    method.name.should       == 'puts'
    method.visibility.should == :public
  end

  should 'retrieve the method arguments' do
    defs   = RubyLint::Importer.import('Importer', RubyLint)
    method = defs.lookup(:method, 'import')

    method.arguments.length.should          == 1
    method.optional_arguments.length.should == 2

    method.arguments[0].name.should          == 'name'
    method.optional_arguments[0].name.should == 'source'
  end

  should 'import a list of global variables' do
    vars = RubyLint::Importer.import_global_variables('Kernel')

    vars.length.should == Kernel.global_variables.length

    var = vars.select { |v| v.name == '$LOAD_PATH' }[0]

    var.is_a?(RubyLint::Definition::RubyObject).should == true
  end
end

require File.expand_path('../../../helper', __FILE__)

describe RubyLint::DefinitionBuilder::RubySclass do
  should 'define an sclass using self' do
    node = s(:sclass, s(:self), s(:nil))
    root = ruby_object.new(:name => 'root')

    root.add(:keyword, 'self', root)

    builder = RubyLint::DefinitionBuilder::RubySclass.new(node, root)

    builder.scope.should == root
  end

  should 'define an sclass using a constant' do
    node = s(:sclass, s(:const, nil, :A), s(:nil))
    root = ruby_object.new(:name => 'root')

    root.add(:keyword, 'self', root)
    root.define_constant('A')

    builder = RubyLint::DefinitionBuilder::RubySclass.new(node, root)

    builder.scope.should == root.lookup(:const, 'A')
  end

  should 'define an sclass using a constant path' do
    node = s(:sclass, s(:const, s(:const, nil, :A), :B), s(:nil))
    root = ruby_object.new(:name => 'root')

    root.add(:keyword, 'self', root)
    root.define_constant('A').define_constant('B')

    builder = RubyLint::DefinitionBuilder::RubySclass.new(node, root)

    builder.scope.should == root.lookup(:const, 'A').lookup(:const, 'B')
  end
end

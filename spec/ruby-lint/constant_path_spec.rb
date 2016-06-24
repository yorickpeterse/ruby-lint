require 'spec_helper'

describe RubyLint::ConstantPath do
  example 'return the root node of a constant path' do
    node = s(:const, s(:const, nil, :Foo), :Bar)
    root = RubyLint::ConstantPath.new(node).root_node

    root.should == [:const, 'Foo']
  end

  example 'generate the name of a constant path' do
    node = s(:const, s(:const, nil, :Foo), :Bar)
    name = RubyLint::ConstantPath.new(node).to_s

    name.should == 'Foo::Bar'
  end

  context 'resolving definitions' do
    before :all do
      @scope = ruby_object.new(:type => :const, :name => 'Example')
      @foo   = @scope.define_constant('Foo')
      @bar   = @foo.define_constant('Bar')

      lvar = ruby_object.new(
        :type  => :lvar,
        :name  => 'example',
        :value => @foo
      )

      lvar_no_value = ruby_object.new(:type => :lvar, :name => 'foo')

      @scope.add_definition(lvar)
      @scope.add_definition(lvar_no_value)
    end

    example 'resolve a path of purely constants' do
      node = s(:const, s(:const, nil, :Foo), :Bar)
      defs = RubyLint::ConstantPath.new(node).resolve(@scope)

      defs.is_a?(ruby_object).should == true

      defs.name.should == 'Bar'
      defs.type.should == :const
    end

    example 'resolve a path containing a variable' do
      node = s(:const, s(:lvar, :example), :Bar)
      defs = RubyLint::ConstantPath.new(node).resolve(@scope)

      defs.is_a?(ruby_object).should == true

      defs.name.should == 'Bar'
      defs.type.should == :const
    end

    example 'return nil if a segment does not have a value' do
      node = s(:const, s(:lvar, :foo), :Bar)
      defs = RubyLint::ConstantPath.new(node).resolve(@scope)

      defs.nil?.should == true
    end

    example 'resolve a path for a constant assignment' do
      node = s(:casgn, s(:const, nil, :Foo), :Bar, s(:int, 10))
      defs = RubyLint::ConstantPath.new(node).resolve(@scope)

      defs.is_a?(ruby_object).should == true

      defs.name.should == 'Bar'
      defs.type.should == :const
    end
  end
end

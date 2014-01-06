require 'spec_helper'

describe RubyLint::Inspector do
  context 'inspecting constants' do
    before :all do
      inspector  = RubyLint::Inspector.new(Encoding)
      @constants = inspector.inspect_constants
    end

    example 'include the source constant' do
      @constants.include?('Encoding').should == true
    end

    example 'include the child constants' do
      @constants.include?('Encoding::BINARY').should     == true
      @constants.include?('Encoding::ASCII_8BIT').should == true
    end
  end

  context 'ignoring duplicates' do
    before :all do
      inspector  = RubyLint::Inspector.new(Encoding)
      @constants = inspector.inspect_constants(
        inspector.constant,
        ['Encoding::BINARY']
      )
    end

    example 'ignore duplicates' do
      @constants.include?('Encoding::BINARY').should == false
    end

    example 'include other constants' do
      @constants.include?('Encoding::ASCII_8BIT').should == true
    end
  end

  context 'dealing with recursive constant lists' do
    before :all do
      # This ignores all constants except those defined on the right hand side
      # of the subtraction. This speeds up the tests quite a bit (we don't care
      # about constants such as CGI and Parser in this case).
      ignore = Object.constants.map(&:to_s) - %w{Object Class Module Encoding}

      inspector  = RubyLint::Inspector.new(Object)
      @constants = inspector.inspect_constants(inspector.constant, ignore)
    end

    example 'include Class and Module' do
      @constants.include?('Class').should  == true
      @constants.include?('Module').should == true
    end

    example 'exclude recursive constants' do
      @constants.include?('Class::Object').should  == false
      @constants.include?('Module::Object').should == false
    end

    example 'include other regular constants' do
      @constants.include?('Encoding').should         == true
      @constants.include?('Encoding::BINARY').should == true
    end
  end

  context 'inspecting parent classes' do
    before :all do
      @inspector = RubyLint::Inspector.new(Object)
    end

    example 'return the parent class' do
      @inspector.inspect_superclass.should == BasicObject
    end
  end

  context 'inspecting included modules' do
    before :all do
      klass     = Class.new { include Enumerable }
      inspector = RubyLint::Inspector.new(klass)
      @modules  = inspector.inspect_modules
    end

    example 'include Enumerable' do
      @modules.include?(Enumerable).should == true
    end
  end

  context 'inspecting class methods' do
    before :all do
      inspector = RubyLint::Inspector.new(Encoding)
      @methods  = inspector.inspect_methods.map(&:name)
    end

    example 'include a method' do
      @methods.include?(:find).should == true
    end
  end

  context 'inspecting instance methods' do
    before :all do
      inspector = RubyLint::Inspector.new(Encoding)
      @methods  = inspector.inspect_instance_methods.map(&:name)
    end

    example 'include a method' do
      @methods.include?(:to_s).should == true
    end
  end

  context 'exclude methods defined in a parent class' do
    before :all do
      parent    = Class.new { def foo; end }
      child     = Class.new(parent) { def bar; end }
      inspector = RubyLint::Inspector.new(child)
      @methods  = inspector.inspect_instance_methods.map(&:name)
    end

    example 'exclude parent methods' do
      @methods.include?(:foo).should == false
    end

    example 'include the instance methods of the source' do
      @methods.include?(:bar).should == true
    end
  end

  context 'exclude methods defined in an included module' do
    before :all do
      mod       = Module.new { def foo; end }
      klass     = Class.new { include(mod); def bar; end }
      inspector = RubyLint::Inspector.new(klass)
      @methods  = inspector.inspect_instance_methods.map(&:name)
    end

    example 'do not include methods from included modules' do
      @methods.include?(:foo).should == false
    end

    example 'include methods defined directly in the class' do
      @methods.include?(:bar).should == true
    end
  end

  context 'excluding parent methods when extending Object' do
    before :all do
      child     = Class.new(Object) { def foo; end }
      inspector = RubyLint::Inspector.new(child)
      @methods  = inspector.inspect_instance_methods.map(&:name)
    end

    example 'only include methods of the sub class' do
      @methods.should == [:foo]
    end
  end

  context 'including initialize methods' do
    before :all do
      @no_init = Class.new
      @init    = Class.new { def initialize; end }

      @no_init_methods = RubyLint::Inspector.new(@no_init)
        .inspect_instance_methods
        .map(&:name)

      @init_methods = RubyLint::Inspector.new(@init)
        .inspect_instance_methods
        .map(&:name)
    end

    example 'exclude initialize if it is not defined directly' do
      @no_init_methods.include?(:initialize).should == false
    end

    example 'include initialize if it is defined directly' do
      @init_methods.include?(:initialize).should == true
    end
  end
end

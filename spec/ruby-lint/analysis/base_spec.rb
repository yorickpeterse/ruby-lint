require 'spec_helper'

describe RubyLint::Analysis::Base do
  example 'require a VM' do
    lambda { RubyLint::Analysis::Base.new }.should raise_error(ArgumentError)

    vm  = RubyLint::VirtualMachine.new
    blk = lambda { RubyLint::Analysis::Base.new(:vm => vm) }

    blk.should_not raise_error
  end

  example 'allow config objects to be passed in' do
    vm     = RubyLint::VirtualMachine.new
    config = RubyLint::Configuration.new
    base   = RubyLint::Analysis::Base.new(:vm => vm, :config => config)

    base.config.should == config
  end

  example 'enable analysis by default' do
    RubyLint::Analysis::Base.analyze?(double(:ast), double(:vm)).should == true
  end
end

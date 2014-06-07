require 'spec_helper'

describe RubyLint::Command do
  before do
    @command = RubyLint::Command.new(:benchmark => true)
    @stdout  = ''
    @stderr  = ''

    @command.stub(:puts) { |data| @stdout << data }
    @command.stub(:stderr) { |data| @stderr << data }
  end

  example 'analyze a valid Ruby file' do
    file = fixture_path('valid.rb')

    @ret = @command.run([file])

    @stdout.empty?.should == true
    @ret.should == 0
  end

  example 'analyze an invalid Ruby file' do
    file = fixture_path('invalid.rb')

    @ret = @command.run([file])

    @stdout.should =~ /undefined method foobar/
    @ret.should == 1
  end

  example 'include benchmarking output' do
    @ret = @command.run([fixture_path('valid.rb')])

    @stderr.should =~ /Execution time:/
    @stderr.should =~ /Memory usage:/
    @ret.should == 0
  end

  example 'run analysis on an entire directory' do
    @ret = @command.run([fixture_path('deeply')])

    @stdout.should =~ /undefined method foobar/
    @ret.should == 1
  end
end

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

    @command.run([file])

    @stdout.empty?.should == true
  end

  example 'analyze an invalid Ruby file' do
    file = fixture_path('invalid.rb')

    @command.run([file])

    @stdout.should =~ /undefined method foobar/
  end

  example 'include benchmarking output' do
    @command.run([fixture_path('valid.rb')])

    @stderr.should =~ /Execution time:/
    @stderr.should =~ /Memory usage:/
  end

  example 'run analysis on an entire directory' do
    @command.run([fixture_path('deeply')])

    @stdout.should =~ /undefined method foobar/
  end
end

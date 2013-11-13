require 'spec_helper'
require File.expand_path('../../../../lib/ruby-lint/cli', __FILE__)

describe RubyLint::CLI do
  describe 'analyze' do
    before do
      @command = RubyLint::CLI.options.commands['analyze']
      @output  = StringIO.new

      @command.output_destination = @output

      # This is a hack to ensure that Slop's internal state is clean before
      # every test. Without this tests would fail if they were defined after
      # the benchmark test (due to its use of a switch as the first argument).
      @command.instance_variable_set(:@trash, [])
    end

    example 'analyze a valid Ruby file' do
      file = fixture_path('valid.rb')

      @command.parse([file])

      @output.rewind
      @output.read.empty?.should == true
    end

    example 'analyze an invalid Ruby file' do
      file = fixture_path('invalid.rb')

      @command.parse([file])

      @output.rewind
      @output.read.should =~ /undefined method foobar/
    end

    example 'include benchmarking output' do
      @command.parse(['-b', fixture_path('valid.rb')])

      @output.rewind

      output = @output.read

      output.should =~ /Execution time:/
      output.should =~ /Memory usage:/
    end

    example 'run analysis on an entire directory' do
      @command.parse([fixture_path('deeply')])

      @output.rewind

      output = @output.read

      output.should =~ /undefined method foobar/
    end
  end
end

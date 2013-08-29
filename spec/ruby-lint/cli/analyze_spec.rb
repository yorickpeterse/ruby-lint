require 'spec_helper'
require File.expand_path('../../../../lib/ruby-lint/cli', __FILE__)

describe RubyLint::CLI do
  describe 'analyze' do
    before do
      @command = RubyLint::CLI.options.commands['analyze']
      @output  = StringIO.new

      @command.output_destination = @output
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
  end
end

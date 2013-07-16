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
      file = File.expand_path('../../../fixtures/valid.rb', __FILE__)

      @command.parse([file])

      @output.rewind
      @output.read.empty?.should == true
    end

    example 'analyze an invalid Ruby file' do
      file = File.expand_path('../../../fixtures/invalid.rb', __FILE__)

      @command.parse([file])

      @output.rewind
      @output.read.should =~ /undefined method foobar/
    end
  end
end

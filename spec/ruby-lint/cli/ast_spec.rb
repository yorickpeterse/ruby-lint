require 'spec_helper'
require File.expand_path('../../../../lib/ruby-lint/cli', __FILE__)

describe RubyLint::CLI do
  describe 'ast' do
    before do
      @command = RubyLint::CLI.options.commands['ast']
      @output  = StringIO.new

      @command.output_destination = @output
    end

    example 'show the AST of a Ruby file' do
      file   = File.expand_path('../../../fixtures/valid.rb', __FILE__)
      output = RubyLint::Parser.new.parse(File.read(file)).inspect

      @command.parse([file])

      @output.rewind
      @output.read.strip.should == output
    end
  end
end
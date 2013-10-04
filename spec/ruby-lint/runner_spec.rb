require 'spec_helper'

describe RubyLint::Runner do
  before do
    @configuration = RubyLint::Configuration.new
    @cache_dir     = Dir.mktmpdir('ruby-lint')
  end

  after do
    FileUtils.rm_rf(@cache_dir)
  end

  example 'run analysis on a single file' do
    files  = [fixture_path('invalid.rb')]
    runner = RubyLint::Runner.new(@configuration)
    output = runner.analyze(files)

    output.should =~ /undefined method foobar on an instance of String/
  end

  example 'run analysis on multiple files' do
    files  = [fixture_path('invalid.rb'), fixture_path('invalid_2.rb')]
    runner = RubyLint::Runner.new(@configuration)
    output = runner.analyze(files)

    output.should =~ /undefined method foobar on an instance of String/
    output.should =~ /undefined method derp on an instance of String/
  end

  example 'add syntax errors to the report' do
    files  = [fixture_path('syntax_error.rb')]
    runner = RubyLint::Runner.new(@configuration)
    output = runner.analyze(files)

    output.should =~ /unexpected token \$end/
  end

  example 'add errors when using externally defined constants' do
    files  = [fixture_path('uses_external_invalid.rb')]
    dirs   = [fixture_path('file_scanner/rails')]
    config = RubyLint::Configuration.new(:directories => dirs)
    runner = RubyLint::Runner.new(config)
    output = runner.analyze(files)

    output.should =~ /undefined method foobar on an instance of User/
  end

  example 'associating nodes with external definitions' do
    files  = [fixture_path('associating.rb')]
    dirs   = [fixture_path('file_scanner/lib/ruby-lint')]
    config = RubyLint::Configuration.new(:directories => dirs)
    runner = RubyLint::Runner.new(config)
    output = runner.analyze(files)

    output.empty?.should == true
  end
end

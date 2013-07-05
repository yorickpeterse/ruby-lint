require File.expand_path('../../helper', __FILE__)

describe RubyLint::Runner do
  before do
    @configuration = RubyLint::Configuration.new
  end

  should 'run analysis on a single file' do
    files  = [fixture_path('invalid.rb')]
    runner = RubyLint::Runner.new(@configuration)
    output = runner.analyze(files)

    output.should =~ /undefined method foobar on an instance of String/
  end

  should 'run analysis on multiple files' do
    files  = [fixture_path('invalid.rb'), fixture_path('invalid_2.rb')]
    runner = RubyLint::Runner.new(@configuration)
    output = runner.analyze(files)

    output.should =~ /undefined method foobar on an instance of String/
    output.should =~ /undefined method derp on an instance of String/
  end

  should 'add syntax errors to the report' do
    files  = [fixture_path('syntax_error.rb')]
    runner = RubyLint::Runner.new(@configuration)
    output = runner.analyze(files)

    output.should =~ /unexpected token \$end/
  end
end

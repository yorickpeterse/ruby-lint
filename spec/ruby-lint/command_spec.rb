require 'spec_helper'

describe RubyLint::Command do
  context 'CLI usage' do
    before do
      @command = described_class.new(:benchmark => true)
      @stdout  = ''
      @stderr  = ''

      @command.stub(:puts) { |data| @stdout << data }
      @command.stub(:stderr) { |data| @stderr << data }
      @command.stub(:exit)
    end

    it 'analyzes a valid Ruby file' do
      file = fixture_path('valid.rb')

      @command.run([file])

      @stdout.empty?.should == true
    end

    it 'analyzes an invalid Ruby file' do
      file = fixture_path('invalid.rb')

      @command.run([file])

      @stdout.should =~ /undefined method foobar/
    end

    it 'includes benchmarking output' do
      @command.run([fixture_path('valid.rb')])

      @stderr.should =~ /Execution time:/
      @stderr.should =~ /Memory usage:/
    end

    it 'runs analysis on an entire directory' do
      @command.run([fixture_path('deeply')])

      @stdout.should =~ /undefined method foobar/
    end

    it 'sets the status code to 1 for non empty output' do
      @command.should_receive(:exit).with(1)

      @command.run([fixture_path('invalid.rb')])
    end
  end

  context '#load_configuration' do
    it 'loads the default configuration files' do
      RubyLint::Configuration.should_receive(:load_from_file)

      described_class.new.load_configuration
    end

    it 'loads a specific configuration file' do
      config = File.expand_path('../../../ruby-lint.yml', __FILE__)

      RubyLint::Configuration.should_receive(:load_from_file).with([config])

      described_class.new(:config => config).load_configuration
    end

    it 'raises Errno::ENOENT if the configuration file does not exist' do
      command = described_class.new(:config => 'foobar.yml')
      block   = lambda { command.load_configuration }

      block.should raise_error(Errno::ENOENT)
    end
  end
end

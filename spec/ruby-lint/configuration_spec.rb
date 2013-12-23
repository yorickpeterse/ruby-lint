require 'spec_helper'

describe RubyLint::Configuration do
  context 'default options' do
    before do
      @configuration = RubyLint::Configuration.new
    end

    example 'set the default report levels' do
      @configuration.report_levels.should == RubyLint::Report::DEFAULT_LEVELS
    end

    example 'set the default presenter' do
      @configuration.default_presenter.should == RubyLint::Presenter::Text
    end

    example 'set the default analysis classes' do
      @configuration.default_analysis_classes.empty?.should == false
    end

    example 'set the default debug mode' do
      @configuration.debug.should == false
    end
  end

  context 'empty and invalid arguments' do
    before do
      @configuration = RubyLint::Configuration.new
    end

    example 'set the report levels' do
      @configuration.report_levels = []

      @configuration.report_levels
        .should == @configuration.default_report_levels
    end

    example 'set an invalid presenter' do
      blk = lambda { @configuration.presenter = String }

      blk.should raise_error(ArgumentError, /Invalid presenter/)
    end

    example 'set the analysis classes' do
      @configuration.analysis_classes = []

      @configuration.analysis_classes
        .should == @configuration.default_analysis_classes
    end

    example 'set an invalid directory' do
      blk = lambda do
        @configuration.directories = ['idoubtthisdirectoryexists']
      end

      blk.should raise_error(ArgumentError, /does not exist/)
    end

    example 'setting the directories to nil' do
      @configuration.directories = nil

      @configuration.directories.should == []
    end
  end

  context 'setting options via the constructor' do
    example 'set the report levels' do
      conf = RubyLint::Configuration.new(:report_levels => ['info'])

      conf.report_levels.should == [:info]
    end

    example 'set the presenter' do
      conf = RubyLint::Configuration.new(:presenter => 'json')

      conf.presenter.should == RubyLint::Presenter::JSON
    end

    example 'set the analysis classes' do
      conf = RubyLint::Configuration.new(
        :analysis_classes => ['undefined_methods']
      )

      conf.analysis_classes.should == [RubyLint::Analysis::UndefinedMethods]
    end

    example 'set the debug mode' do
      conf = RubyLint::Configuration.new(:debug => true)

      conf.debug.should == true
    end
  end

  context 'setting options via a configuration file' do
    example 'set the options from a YAML file' do
      paths = [fixture_path('config.yml')]
      conf  = RubyLint::Configuration.load_from_file(paths)

      conf.report_levels.should    == [:info]
      conf.analysis_classes.should == [RubyLint::Analysis::UndefinedMethods]
      conf.presenter.should        == RubyLint::Presenter::JSON
    end

    example 'return a default configuration file' do
      conf = RubyLint::Configuration.load_from_file([])

      conf.is_a?(RubyLint::Configuration).should == true

      conf.report_levels.should == RubyLint::Report::DEFAULT_LEVELS
    end
  end
end

require File.expand_path('../../helper', __FILE__)

describe RubyLint::Configuration do
  describe 'default options' do
    before do
      @configuration = RubyLint::Configuration.new
    end

    should 'set the default report levels' do
      @configuration.report_levels.should == RubyLint::Report::DEFAULT_LEVELS
    end

    should 'set the default presenter' do
      @configuration.default_presenter.should == RubyLint::Presenter::Text
    end

    should 'set the default analysis classes' do
      @configuration.default_analysis_classes.empty?.should == false
    end
  end

  describe 'setting options via the constructor' do
    should 'set the report levels' do
      conf = RubyLint::Configuration.new(:report_levels => ['info'])

      conf.report_levels.should == [:info]
    end

    should 'set the presenter' do
      conf = RubyLint::Configuration.new(:presenter => 'json')

      conf.presenter.should == RubyLint::Presenter::JSON
    end

    should 'set the analysis classes' do
      conf = RubyLint::Configuration.new(
        :analysis_classes => ['undefined_methods']
      )

      conf.analysis_classes.should == [RubyLint::Analysis::UndefinedMethods]
    end
  end

  describe 'setting options via a configuration file' do
    should 'set the options from a YAML file' do
      paths = [File.expand_path('../../fixtures/config.yml', __FILE__)]
      conf  = RubyLint::Configuration.load_from_file(paths)

      conf.report_levels.should    == [:info]
      conf.analysis_classes.should == [RubyLint::Analysis::UndefinedMethods]
      conf.presenter.should        == RubyLint::Presenter::JSON
    end
  end
end

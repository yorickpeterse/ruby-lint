require File.expand_path('../../helper', __FILE__)

describe RubyLint::Configuration do
  should 'set a option using the constructor method' do
    config = RubyLint::Configuration.new(:report_levels => [:test])

    config.report_levels.should == [:test]
  end

  should 'set a default value for options' do
    config = RubyLint::Configuration.new

    config.report_levels.should == RubyLint::Report::DEFAULT_LEVELS
  end
end

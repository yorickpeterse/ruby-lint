require File.expand_path('../../helper', __FILE__)

describe 'RubyLint::Callback' do
  it 'Add an error to a report using RubyLint::Callback' do
    report   = RubyLint::Report.new
    callback = RubyLint::Callback.new(report)

    report.levels.each do |level|
      report.messages[level].nil?.should == true

      callback.send(level, "test #{level}", 1, 1)

      report.messages[level].class.should  == Array
      report.messages[level].length.should == 1

      report.messages[level][0][:message].should == "test #{level}"
    end
  end

  it 'Ignore errors (when disabled) when adding one using RubyLint::Callback' do
    report   = RubyLint::Report.new('(ruby-lint)', [:warning])
    callback = RubyLint::Callback.new(report)

    callback.send(:error, 'test error', 1, 1)

    report.messages[:error].nil?.should == true
  end
end

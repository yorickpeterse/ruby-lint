require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Presenter::Text do
  should 'format a set of entries' do
    report    = RubyLint::Report.new
    presenter = RubyLint::Presenter::Text.new

    report.error('error message', 1, 1, 'a.rb')
    report.error('error message 2', 2, 1, 'a.rb')
    report.warning('warning message', 1, 1, 'b.rb')
    report.info('info message', 1, 1, 'c.rb')

    output = presenter.present(report)

    output.should == <<-EOF.strip
a.rb: error: line 1, column 1: error message
a.rb: error: line 2, column 1: error message 2
b.rb: warning: line 1, column 1: warning message
c.rb: info: line 1, column 1: info message
    EOF
  end
end

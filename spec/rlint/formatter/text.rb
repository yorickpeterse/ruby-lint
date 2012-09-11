require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Formatter::Text' do
  it 'Format a report in plain text' do
    report    = Rlint::Report.new
    formatter = Rlint::Formatter::Text.new

    report.add(:error, 'test error', 1, 1, 'b.rb')
    report.add(:info, 'test info', 2, 1, 'a.rb')
    report.add(:info, 'test info b.rb', 3, 1, 'b.rb')

    expected_output = <<-CODE
a.rb: info: line 2, column 1: test info
b.rb: error: line 1, column 1: test error
b.rb: info: line 3, column 1: test info b.rb
    CODE

    formatter.format(report.messages).should == expected_output.strip
  end
end

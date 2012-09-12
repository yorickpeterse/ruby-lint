require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Formatter::Text' do
  it 'Format a report in plain text' do
    report_a  = Rlint::Report.new('a.rb')
    report_b  = Rlint::Report.new('b.rb')
    formatter = Rlint::Formatter::Text.new

    report_a.add(:info, 'test info', 2, 1)

    report_b.add(:error, 'test error', 1, 1)
    report_b.add(:info, 'test info b.rb', 3, 1)

    output_a = 'a.rb: info: line 2, column 1: test info'
    output_b = "b.rb: error: line 1, column 1: test error\n" \
      'b.rb: info: line 3, column 1: test info b.rb'

    formatter.format(report_a).should == output_a
    formatter.format(report_b).should == output_b
  end
end

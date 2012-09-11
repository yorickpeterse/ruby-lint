require File.expand_path('../../helper', __FILE__)

describe 'Rlint::Report' do
  it 'Add an error message to a report' do
    report = Rlint::Report.new

    report.add(:error, 'test error', 1, 1, '(rlint)')

    report.messages.class.should  == Hash
    report.messages.length.should == 1

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 1

    report.messages[:error][0][:message].should == 'test error'
    report.messages[:error][0][:line].should    == 1
    report.messages[:error][0][:column].should  == 1
    report.messages[:error][0][:file].should    == '(rlint)'
  end

  it 'Ignore disabled reporting levels' do
    report = Rlint::Report.new([:error])

    report.add(:info, 'test info', 1, 1, '(rlint)')

    report.messages.class.should       == Hash
    report.messages[:info].nil?.should == true
  end
end

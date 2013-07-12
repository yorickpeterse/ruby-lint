require File.expand_path('../../helper', __FILE__)

describe 'RubyLint::Report' do
  should 'add a message using #add' do
    report = RubyLint::Report.new

    report.add(:info, 'info message', 1, 1, 'file.rb')

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.level.should   == :info
    entry.message.should == 'info message'
    entry.line.should    == 1
    entry.column.should  == 1
    entry.file.should    == 'file.rb'
  end

  should 'add a message using method_missing' do
    report = RubyLint::Report.new

    report.info('info message', 1, 1, 'file.rb')

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.level.should   == :info
    entry.message.should == 'info message'
    entry.line.should    == 1
    entry.column.should  == 1
    entry.file.should    == 'file.rb'
  end

  should 'raise for invalid method calls' do
    report = RubyLint::Report.new
    error  = should.raise?(NoMethodError) { report.test }

    error.message.should =~ /undefined method "test" for/
  end

  should 'ignore invalid reporting levels' do
    report = RubyLint::Report.new

    report.add(:test, 'invalid message', 1, 1, 'file.rb')

    report.entries.empty?.should == true
  end
end

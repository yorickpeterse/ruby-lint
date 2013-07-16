require 'spec_helper'

describe 'RubyLint::Report' do
  example 'add a message using #add' do
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

  example 'add a message using method_missing' do
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

  example 'raise for invalid method calls' do
    report = RubyLint::Report.new

    lambda { report.test }
      .should raise_error(NoMethodError, /undefined method "test" for/)
  end

  example 'ignore invalid reporting levels' do
    report = RubyLint::Report.new

    report.add(:test, 'invalid message', 1, 1, 'file.rb')

    report.entries.empty?.should == true
  end
end

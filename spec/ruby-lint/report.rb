require File.expand_path('../../helper', __FILE__)

describe 'RubyLint::Report' do
  should 'register a custom level' do
    RubyLint::Report.add_level(:test)

    RubyLint::Report.levels.include?(:test).should == true

    RubyLint::Report.delete_level(:test)

    RubyLint::Report.levels.include?(:test).should == false
  end

  should 'prepare the list of entries for the enabled levels' do
    report = RubyLint::Report.new

    RubyLint::Report::DEFAULT_LEVELS.each do |level|
      report.entries.key?(level).should == true
    end
  end

  should 'add a message using #add' do
    report = RubyLint::Report.new

    report.add(:info, 'info message', 1, 1, 'file.rb')

    report.entries[:info].length.should == 1

    entry = report.entries[:info][0]

    entry.message.should == 'info message'
    entry.line.should    == 1
    entry.column.should  == 1
    entry.file.should    == 'file.rb'
  end

  should 'add a message using method_missing' do
    report = RubyLint::Report.new

    report.info('info message', 1, 1, 'file.rb')

    report.entries[:info].length.should == 1

    entry = report.entries[:info][0]

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

    report.entries.key?(:test).should == false
  end
end

require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Analysis::Pedantics do
  should 'warn when using do/then in various statements' do
    code = <<-CODE
if true then; end
unless true then; end
while true do; end
    CODE

    report  = build_report(code, RubyLint::Analysis::Pedantics)
    entries = report.entries

    entries.length.should == 3

    entries[0].line.should    == 1
    entries[0].message.should == 'the use of then/do is not needed here'

    entries[1].line.should    == 2
    entries[1].message.should == 'the use of then/do is not needed here'

    entries[2].line.should    == 3
    entries[2].message.should == 'the use of then/do is not needed here'
  end

  should 'work with conditional operators' do
    code = <<-'CODE'
1 ? 2 : 3
    CODE
    build_report(code, RubyLint::Analysis::Pedantics).entries.length.should == 0
  end

  should 'work with conditions without begin' do
    code = <<-'CODE'
if true
end
1 if 1
    CODE
    build_report(code, RubyLint::Analysis::Pedantics).entries.length.should == 0
  end

  should 'warn for the use of BEGIN/END' do
    code = <<-CODE
BEGIN {}
END {}
    CODE

    report  = build_report(code, RubyLint::Analysis::Pedantics)
    entries = report.entries

    entries.length.should == 2

    entries[0].line.should    == 1
    entries[0].message.should == 'BEGIN/END is useless'

    entries[1].line.should    == 2
    entries[1].message.should == 'BEGIN/END is useless'
  end
end

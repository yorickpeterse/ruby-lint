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

  # See https://github.com/YorickPeterse/ruby-lint/issues/32 for the motivation
  # behind this test.
  should 'not warn when no do/then identifier is used in a statement' do
    code = <<-CODE.strip
if true; end

if foo && bar
  true
else
  false
end

foo ? true : false
    CODE

    report = build_report(code, RubyLint::Analysis::Pedantics)

    report.entries.empty?.should == true
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

require 'spec_helper'

describe RubyLint::Analysis::LoopKeywords do
  context 'next' do
    example 'error when using next outside of a loop' do
      report  = build_report('next', described_class)
      entries = report.entries

      entries[0].message.should == 'next can only be used inside a loop/block'
      entries[0].line.should    == 1
      entries[0].column.should  == 1
    end

    example 'do not error when using next in a loop' do
      code   = '[].each { next }'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end

    example 'do not error when using next inside a while loop' do
      code   = 'while true; next; end'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end

    example 'do not error when using next inside an until loop' do
      code   = 'until true; next; end'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end

    example 'do not error when using next inside a for loop' do
      code   = 'for x in y; next; end'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end

    example 'do not error when using next inside a loop loop' do
      code   = 'loop { next }'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end
  end

  context 'break' do
    example 'error when using break outside of a loop' do
      report  = build_report('break', described_class)
      entries = report.entries

      entries[0].message.should == 'break can only be used inside a loop/block'
      entries[0].line.should    == 1
      entries[0].column.should  == 1
    end

    example 'do not error when using break in a loop' do
      code   = '[].each { break }'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end

    example 'do not error when using break inside a while loop' do
      code   = 'while true; break; end'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end

    example 'do not error when using break inside an until loop' do
      code   = 'until true; break; end'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end

    example 'do not error when using break inside a for loop' do
      code   = 'for x in y; break; end'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end

    example 'do not error when using break inside a loop loop' do
      code   = 'loop { break }'
      report = build_report(code, described_class)

      report.entries.should be_empty
    end
  end
end

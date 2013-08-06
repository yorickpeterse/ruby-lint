require 'spec_helper'

describe RubyLint::Presenter::Text do
  example 'format a set of entries' do
    report    = RubyLint::Report.new
    presenter = RubyLint::Presenter::Text.new

    report.add(
      :level   => :error,
      :message => 'error message',
      :line    => 1,
      :column  => 1,
      :file    => '/foo/a.rb'
    )

    report.add(
      :level   => :error,
      :message => 'error message 2',
      :line    => 2,
      :column  => 1,
      :file    => '/foo/a.rb'
    )

    report.add(
      :level   => :warning,
      :message => 'warning message',
      :line    => 1,
      :column  => 1,
      :file    => '/foo/b.rb'
    )

    report.add(
      :level   => :info,
      :message => 'info message',
      :line    => 1,
      :column  => 1,
      :file    => '/foo/c.rb'
    )

    output = presenter.present(report)

    output.should == <<-EOF.strip
a.rb: error: line 1, column 1: error message
a.rb: error: line 2, column 1: error message 2
b.rb: warning: line 1, column 1: warning message
c.rb: info: line 1, column 1: info message
    EOF
  end
end

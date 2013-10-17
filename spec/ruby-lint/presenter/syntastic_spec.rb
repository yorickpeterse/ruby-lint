require 'spec_helper'

describe RubyLint::Presenter::Syntastic do
  example 'format a set of entries' do
    report    = RubyLint::Report.new
    presenter = RubyLint::Presenter::Syntastic.new

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
/foo/a.rb:E:1:1: error message
/foo/a.rb:E:2:1: error message 2
/foo/b.rb:W:1:1: warning message
/foo/c.rb:I:1:1: info message
    EOF
  end
end

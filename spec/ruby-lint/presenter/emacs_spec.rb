require 'spec_helper'

describe RubyLint::Presenter::Emacs do
  it 'formats a set of entries' do
    report    = RubyLint::Report.new
    presenter = RubyLint::Presenter::Emacs.new

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
/foo/a.rb:1:1:error: error message
/foo/a.rb:2:1:error: error message 2
/foo/b.rb:1:1:warning: warning message
/foo/c.rb:1:1:info: info message
    EOF
  end
end

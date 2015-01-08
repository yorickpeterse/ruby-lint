require 'spec_helper'
require 'json'

describe RubyLint::Presenter::JSON do
  it 'formats a set of entries' do
    report    = RubyLint::Report.new
    presenter = RubyLint::Presenter::JSON.new

    report.add(
      :level   => :error,
      :message => 'error message',
      :line    => 1,
      :column  => 1,
      :file    => 'a.rb'
    )

    report.add(
      :level   => :error,
      :message => 'error message 2',
      :line    => 2,
      :column  => 1,
      :file    => 'a.rb'
    )

    report.add(
      :level   => :warning,
      :message => 'warning message',
      :line    => 1,
      :column  => 1,
      :file    => 'b.rb'
    )

    report.add(
      :level   => :info,
      :message => 'info message',
      :line    => 1,
      :column  => 1,
      :file    => 'c.rb'
    )

    output  = presenter.present(report)
    decoded = JSON(output)

    decoded.length.should == 4

    decoded[0]['file'].should  == 'a.rb'
    decoded[0]['level'].should == 'error'

    decoded[1]['file'].should  == 'a.rb'
    decoded[1]['level'].should == 'error'

    decoded[2]['file'].should  == 'b.rb'
    decoded[2]['level'].should == 'warning'

    decoded[3]['file'].should  == 'c.rb'
    decoded[3]['level'].should == 'info'
  end
end

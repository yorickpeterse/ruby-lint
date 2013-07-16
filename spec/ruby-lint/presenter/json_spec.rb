require 'spec_helper'
require 'json'

describe RubyLint::Presenter::JSON do
  example 'format a set of entries' do
    report    = RubyLint::Report.new
    presenter = RubyLint::Presenter::JSON.new

    report.error('error message', 1, 1, 'a.rb')
    report.error('error message 2', 2, 1, 'a.rb')
    report.warning('warning message', 1, 1, 'b.rb')
    report.info('info message', 1, 1, 'c.rb')

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
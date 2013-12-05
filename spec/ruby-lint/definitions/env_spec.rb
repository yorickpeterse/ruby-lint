require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'ENV' do
    example 'treat ENV as an instance' do
      const = RubyLint::GlobalScope.global_constant('ENV')

      const.instance?.should == true
    end
  end
end

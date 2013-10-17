require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'IO' do
    example 'treat STDERR/STDOUT/STDIN as instances' do
      %w{STDERR STDOUT STDIN}.each do |name|
        const = RubyLint::GlobalScope.global_constant(name)

        const.instance?.should == true
      end
    end
  end
end

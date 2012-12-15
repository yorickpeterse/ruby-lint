require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing defined? statements' do
  should 'parse a defined? statement' do
    parse('defined? Kernel').should == s(:defined, s(:constant, 'Kernel'))
  end

  should 'parse a defined?() statement' do
    parse('defined?(Kernel)').should == s(:defined, s(:constant, 'Kernel'))
  end
end

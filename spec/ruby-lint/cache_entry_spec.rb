require 'spec_helper'

describe RubyLint::CacheEntry do
  before do
    @tempfile = Tempfile.new('ruby-lint')
  end

  after do
    File.unlink(@tempfile)
  end

  example 'should validate the file modification times' do
    mtimes = {@tempfile.path => @tempfile.mtime}
    entry  = RubyLint::CacheEntry.new(nil, nil, mtimes)

    entry.valid?.should == true

    @tempfile.write('hello')

    # Bit of a hack to ensure that we don't have to use sleep()
    entry.mtimes[@tempfile.path] = @tempfile.mtime - 10

    entry.valid?.should == false
  end
end

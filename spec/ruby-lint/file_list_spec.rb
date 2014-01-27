require 'spec_helper'

describe RubyLint::FileList do
  before :all do
    @list = RubyLint::FileList.new
  end

  example 'list a set of files' do
    path = fixture_path('valid.rb')

    @list.process([path]).should == [path]
  end

  example 'list a set of directories' do
    @list.process([fixture_path('deeply')]).should == [
      fixture_path('deeply/nested/file.rb')
    ]
  end

  example 'raise for non existing files' do
    block = lambda { @list.process(['yeah-right']) }

    block.should raise_error(Errno::ENOENT)
  end
end

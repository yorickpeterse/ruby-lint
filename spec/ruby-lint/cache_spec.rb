require 'spec_helper'

describe RubyLint::Cache do
  before do
    @directory = Dir.mktmpdir('ruby-lint')
    @cache     = RubyLint::Cache.new(@directory)
  end

  after do
    FileUtils.rm_rf(@directory)
  end

  example 'create the cache directory' do
    directory = Dir::Tmpname.create('ruby-lint') { |name| name }
    cache     = RubyLint::Cache.new(directory)

    File.directory?(directory).should == false

    cache.create_directory!

    File.directory?(directory).should == true

    FileUtils.rm_rf(directory)
  end

  example 'set and get a cache entry' do
    value = 20

    @cache.set('example', value)

    @cache.get('example').should == value
  end

  example 'check if a cache entry exists' do
    @cache.exists?('example').should == false

    @cache.set('example', 20)

    @cache.exists?('example').should == true
  end

  example 'return nothing if a cache entry does not exist' do
    @cache.get('foo').nil?.should == true
  end

  example 'remove a cache entry' do
    @cache.set('example', 20)

    @cache.exists?('example').should == true
    @cache.delete('example')
    @cache.exists?('example').should == false
  end
end

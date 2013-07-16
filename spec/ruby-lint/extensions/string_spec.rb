require 'spec_helper'

describe 'RubyLint String extensions' do
  example 'snake_case a String' do
    'HelloWorld::Foo::Bar'.snake_case.should == 'hello_world_foo_bar'
  end
end
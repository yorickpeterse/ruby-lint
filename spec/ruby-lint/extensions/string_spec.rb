require 'spec_helper'

describe 'RubyLint String extensions' do
  it 'converts a String to snake_case' do
    'HelloWorld::Foo::Bar'.snake_case.should == 'hello_world_foo_bar'
  end
end

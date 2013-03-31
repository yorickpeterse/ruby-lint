require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint String extensions' do
  should 'snake_case a String' do
    'HelloWorld::Foo::Bar'.snake_case.should == 'hello_world_foo_bar'
  end
end

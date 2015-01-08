require 'spec_helper'

# https://github.com/YorickPeterse/ruby-lint/issues/108
describe 'Inheriting the Logger class' do
  before :all do
    code = <<-CODE
class Example < Logger
  def initialize
    @messages = []
  end
end
    CODE

    @definition = build_definitions(code).lookup(:const, 'Example')
  end

  it 'inherits from the Logger class' do
    @definition.has_definition?(:instance_method, 'datetime_format')
      .should == true
  end

  it 'marks the instance variable as unused' do
    @definition.lookup(:ivar, '@messages').used?.should == false
  end
end

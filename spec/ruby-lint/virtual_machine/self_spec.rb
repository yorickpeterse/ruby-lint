require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'self in instances/classes' do
    before :all do
      code = <<-CODE
class Example
  def self.class_method
    @class_self = self
  end

  def instance_method
    @instance_self = self
  end
end
      CODE

      definitions = build_definitions(code)
      @constant   = definitions.lookup(:const, 'Example')
    end

    it 'sets the right instance type' do
      @constant.lookup(:ivar, '@class_self').value.instance?.should    == false
      @constant.lookup(:ivar, '@instance_self').value.instance?.should == true
    end

    it 'defines the method "self"' do
      @constant.lookup(:method, 'self').is_a?(ruby_method).should == true
    end

    it 'defines the instance method "self"' do
      @constant.lookup(:instance_method, 'self')
        .is_a?(ruby_method)
        .should == true
    end
  end
end

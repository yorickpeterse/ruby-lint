require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'rails' do
    before :all do
      code        = fixture('complex/rails/basic_controller.rb')
      @defs       = build_definitions(code)
      @controller = @defs.lookup(:const, 'ApplicationController')
    end

    example 'inherit the parent controller' do
      @controller.has_definition?(:instance_method, 'login_required')
        .should == true
    end

    example 'include built-in Rails definitions' do
      @controller.has_definition?(:method, 'protect_from_forgery')
        .should == true
    end
  end
end

require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'rails' do
    should 'process a basic Rails controller' do
      code = fixture('complex/rails/basic_controller.rb')
      defs = build_definitions(code)

      controller = defs.lookup(:const, 'ApplicationController')

      controller.is_a?(ruby_object).should == true

      controller.lookup(:instance_method, 'login_required') \
        .is_a?(ruby_method) \
        .should == true
    end
  end
end

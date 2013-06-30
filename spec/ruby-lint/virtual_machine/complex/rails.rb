require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'rails' do
    should 'process a basic Rails controller' do
      code = <<-EOF
module ActionController
  class Base
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery

  def login_required
    unless @user = User.where(id: session[:uid]).first
      redirect_to login_path
    end
  end
end
      EOF

      defs = build_definitions(code)

      controller = defs.lookup(:const, 'ApplicationController')

      controller.is_a?(ruby_object).should == true

      controller.lookup(:instance_method, 'login_required') \
        .is_a?(ruby_method) \
        .should == true
    end
  end
end

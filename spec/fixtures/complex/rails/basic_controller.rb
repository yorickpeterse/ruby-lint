# Without this the VM will raise an error since there currently are no Rails
# definitions pre-made.
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

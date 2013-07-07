class ApplicationController < ActionController::Base
  protect_from_forgery

  def login_required
    unless @user = User.where(id: session[:uid]).first
      redirect_to login_path
    end
  end
end

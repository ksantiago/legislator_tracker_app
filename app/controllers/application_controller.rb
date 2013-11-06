class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :look_up_user

  def look_up_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end

end

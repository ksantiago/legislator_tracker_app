class SessionController < ApplicationController

  def new
  end

  def create
    email = params[:email]
    password = params[:password]
    user = User.where(email: email).first
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to(user)
    else
      flash[:notice] = "Incorrect, please try again"
      redirect_to(login_path)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to("/login")
  end
end

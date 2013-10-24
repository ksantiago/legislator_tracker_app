class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(login_path)
    else
      render :new
    end
  end

  def show
    @user = User.where(id: session[:user_id]).first
    if @user.nil?
      redirect_to(login_path)
    end

  end

end

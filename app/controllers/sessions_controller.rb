class SessionsController < ApplicationController

  def login
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    #if @user && @user.authenticate(params[:session][:password])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      byebug
      redirect_to listings_path
    else
      flash[:message] = "Invalid login."
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end

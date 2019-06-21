class SessionsController < ApplicationController

  def login
  end

  def create

    @buyer = Buyer.find_by(name: params[:name])
    #if @buyer && @buyer.authenticate(params[:session][:password])
    if @buyer && @buyer.authenticate(params[:password])
      session[:buyer_id] = @buyer.id
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

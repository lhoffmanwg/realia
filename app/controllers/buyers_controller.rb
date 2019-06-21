class BuyersController < ApplicationController

  #before_action :require_login

  def index
    @buyers = Buyer.all
  end

  def show
    @favorites = Favorite.all
    @listings = Listing.all
    @buyer = Buyer.find(params[:id])
    # byebug
  end

  def edit
    @buyer = Buyer.find(params[:id])
  end

  def new
    @buyer = Buyer.new
  end

  def update
    @buyer = Buyer.find(params[:id])
    @buyer.update(buyer_params)
    redirect_to buyer_path(@buyer)
  end

  def create
    @buyer = Buyer.create(buyer_params)
    session.clear
    session[:buyer_id] = @buyer.id
    redirect_to listings_path
  end

  def destroy
    @buyer = Buyer.find(params[:id])
    @buyer.destroy
    redirect_to action: "index"
  end

  private

  def buyer_params
    params.require(:buyer).permit(:name, :email, :phone, :budget, :bedrooms, :bathrooms, :password, :password_confirmation)
  end

end

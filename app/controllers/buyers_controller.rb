class BuyersController < ApplicationController

  def index
    @buyers = Buyer.all
  end

  def show
    @buyer = Buyer.find(params[:id])
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
    @buyer = Buyer.new(buyer_params)
    @buyer.save
    redirect_to buyer_path(@buyer)
  end

  def destroy
    @buyer = Buyer.find(params[:id])
    @buyer.destroy
    redirect_to action: "index"
  end

  private

  def buyer_params
    params.require(:buyer).permit(:name, :email, :phone, :budget, :bedrooms, :bathrooms)
  end

end

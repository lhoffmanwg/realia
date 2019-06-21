
class FavoritesController < ApplicationController

  before_action :current_buyer

  def new
    @favorite = Favorite.create(buyer_id: params[:buyer], listing_id: params[:listing_id])
    redirect_to buyer_path(@favorite.buyer.id)
  end

  def create
    @favorite = Favorite.create(favorite_params)
    @favorite.save
    redirect_to listings_path
  end

private

  def favorite_params
    params.require(:favorite).permit(:listing_id, :buyer_id)
  end
end

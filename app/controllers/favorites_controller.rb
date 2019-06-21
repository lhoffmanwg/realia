
class FavoritesController < ApplicationController

  before_action :current_buyer

  # def new
  #   @favorite = Favorite.new
  # end


  def create
    # byebug
    @favorite = Favorite.new
    byebug
    @favorite = Favorite.create(favorite_params)

    #@favorite.listing_id

    @favorite.save
    #redirect_to listing_path(@listing)
    redirect_to listings_path

  end

  private

  def favorite_params
    params.require(:favorite).permit(:listing_id, :buyer_id)
  end
end

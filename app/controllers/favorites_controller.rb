class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(favorite_params)

    #@favorite.listing_id

    @favorite.save
    #redirect_to listing_path(@listing)
    byebug
  end

  private

  def favorite_params
    params.require(:favorite).permit(:listing_id)
  end
end

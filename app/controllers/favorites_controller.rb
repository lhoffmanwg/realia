class FavoritesController < ApplicationController

  def create
    #byebug
  end

  private

  def favorite_params
    params.require(:favorite).permit(:listing_id)
  end
end

class ListingsController < ApplicationController

    def index
      @listings = Listing.all
    end

    def show
      @favorite = Favorite.new
      @listing = Listing.find(params[:id])
    end

    def edit
      @listing = Listing.find(params[:id])
    end

    def new
      @listing = Listing.new
    end

    def update
      @listing = Listing.find(params[:id])
      @listing.update(listing_params)
      redirect_to listing_path(@listing)
    end

    def create
      @listing = Listing.new(listing_params)
      @listing.save
      redirect_to listing_path(@listing)
    end

    def destroy
      @listing = Listing.find(params[:id])
      @listing.destroy
      redirect_to action: "index"
    end

private

    def listing_params
      params.require(:listing).permit(:price, :title, :description, :agent_id, :house_number, :street, :city, :state, :zip, :date_sold, :date_listed, :house_pic)
    end

end

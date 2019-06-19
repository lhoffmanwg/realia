class ListingsController < ApplicationController

    def index
      @listings = Listing.all
    end

    def show
      @listing = Listing.find(params[:id])
    end

    def edit
      @listing = Listing.find(params[:id])
    end

    def new
      @listing = Agent.new
    end

    def update
      @listing = Listing.find(params[:id])
      @title = @listing.title
      @listing.update(params.require(:listing).permit(:price, :title, :description, :agent_id, :house_number, :street, :city, :state, :zip))
      redirect_to listing_path(@listing)
      # "house_pic"
      # "user_id"
    end

    def create
      @listing = Listing.new
      @listing.agency = params[:listing][:agency]
      @listing.years_exp = params[:listing][:years_exp]
      @listing.save
      redirect_to listing_path(@listing)
    end

    def destroy
      @listing = Listing.find(params[:id])
      @listing.destroy
      redirect_to action: "index"
    end

end

class AgenciesController < ApplicationController

  def index
    @agencies = Agency.all
  end

  def show
    @agents = Agent.all
    #@listings = Listing.all
    @agency = Agency.find(params[:id])
    #byebug
  end

  def edit
    @agency = Agency.find(params[:id])
  end

  def new
    @agency = Agency.new
  end

  def update
    @agency = Agency.find(params[:id])
    @agency.update(agent_params)
    redirect_to agency_path(@agency)
  end

  def create
    @agency = Agency.new(agent_params)
    @agency.save
    redirect_to agency_path(@agency)
  end

  def destroy
    @agency = Agency.find(params[:id])
    @agency.destroy
    redirect_to action: "index"
  end

  private

  def agent_params
    params.require(:agency).permit(:agency_name, :year_founded)
  end

end

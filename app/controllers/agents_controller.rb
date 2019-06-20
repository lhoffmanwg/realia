class AgentsController < ApplicationController

  def index
    @agents = Agent.all
  end

  def show
    @agent = Agent.find(params[:id])
  end

  def edit
    @agent = Agent.find(params[:id])
  end

  def new
    @agent = Agent.new
  end

  def update
    @agent = Agent.find(params[:id])
    @agent.update(agent_params)
    redirect_to agent_path(@agent)
  end

  def create
    @agent = Agent.new(agent_params)
    if @agent.save
      redirect_to agents_path
    else
      render :new
    end
  end

  def destroy
    @agent = Agent.find(params[:id])
    @agent.destroy
    redirect_to action: "index"
  end

  private

  def agent_params
    params.require(:agent).permit(:name, :agency_id, :years_exp, :email, :phone)
  end

end

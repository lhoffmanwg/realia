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
    @phone = @agent.user.phone
    @agent.update(params.require(:agent).permit(:agency, :years_exp, :phone))
    redirect_to agent_path(@agent)
  end

  def create
    @agent = Agent.new
    @agent.agency = params[:agent][:agency]
    @agent.years_exp = params[:agent][:years_exp]
    @agent.save
    redirect_to agent_path(@agent)
  end

  def destroy
    @agent = Agent.find(params[:id])
    @agent.destroy
    redirect_to action: "index"
  end

end

class Agency < ApplicationRecord
  has_many :agents
  has_many :listings, through: :agents

  #attr_accessor :agent_counter

  # def initialize :agent_counter
  #   @agent_counter = agent_counter
  # end

  def total_listings_by_agent
  end

  def sort_listings_by_list_date
  end

  def sort_listings_by_sold_date
  end

  def self.total_active_listings
  end


  def average_agent_exp
    @agent_counter = 0
    @total_yrs_exp = 0
    # byebug
    Agent.all.each do |agent|
      if self.id == agent.agency_id
        @agent_counter = @agent_counter + 1
        @total_yrs_exp = @total_yrs_exp + agent.years_exp
      end
    end
    # byebug
    @total_yrs_exp.to_f/@agent_counter
  end

end

class Agency < ApplicationRecord
  has_many :agents
  has_many :listings, through: :agents

  def total_listings_by_agent
  end

  def sort_listings_by_list_date
  end

  def sort_listings_by_sold_date
  end

  

end

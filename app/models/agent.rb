class Agent < ApplicationRecord
  has_many :listings

  #accepts_nested_attributes_for :user
  def number_of_listings
    list_ary = []
    if listing.agent_id == self.id
      @listings.each do |list|
        list_ary << list
      end
    end.count
  end

  def number_unsold
    
  end

  def avg_market_days
  end

end

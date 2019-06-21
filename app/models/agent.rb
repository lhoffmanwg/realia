class Agent < ApplicationRecord
  has_many :listings

  # def number_of_listings
  #   if listing.agent_id == self.id
  #
  #     end
  #   end.count
  # end

  def number_unsold

  end

  def avg_market_days
  end

end

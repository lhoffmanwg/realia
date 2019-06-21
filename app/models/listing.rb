class Listing < ApplicationRecord
  belongs_to :agent
  has_many :favorites

  def days_on_market
    self.date_sold ? self.date_listed.to_date..self.date_sold.to_date : self.date_listed.to_date..Time.now.to_date
  end

  def self.total_listings
     self.all.count
  end

  def self.sort_by_highest_price

  end

  def self.sort_by_lowest_price
  end

  def self.sort_by_most_market_days
  end

  # def self.set_show_active_only
  #   self.all.each do |listing|
  #     if listing.date_sold != nil
  #
  #
  #   end
  # end
end

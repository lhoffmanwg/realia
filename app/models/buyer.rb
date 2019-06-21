class Buyer < ApplicationRecord
  has_many :listings, through: :favorites
  has_many :favorites
  validates :name, presence: true
  validates :name, uniqueness: true

  has_secure_password

  def self.how_many_favs

  end

  def sort_my_favs_by_most_faved
  end

  def how_many_days_looking
    self.created_at.to_date..Time.now.to_date

    #take date buyer_record created, subtract from today
  end

end

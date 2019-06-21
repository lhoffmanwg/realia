class Buyer < ApplicationRecord
  has_many :listings, through: :favorites
  has_many :favorites
  validates :name, presence: true
  validates :name, uniqueness: true

  has_secure_password

  def how_many_favs
  end

  def sort_my_favs_by_most_faved
  end

  def how_namy_days_looking
    
    #take date buyer_record created, subtract from today
  end

end

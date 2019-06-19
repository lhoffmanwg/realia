class Buyer < ApplicationRecord
  has_many :listings, through: :favorites
  has_many :favorites

end

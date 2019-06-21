class Buyer < ApplicationRecord
  has_many :listings, through: :favorites
  has_many :favorites
  validates :name, presence: true
  validates :name, uniqueness: true

  has_secure_password

end

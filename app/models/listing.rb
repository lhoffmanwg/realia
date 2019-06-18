class Listing < ApplicationRecord
  belongs_to :agent
  has_many :favorites
  has_many :users, through: :favorites
end

class Buyer < ApplicationRecord
  #has_many :listings, through: :favorites
  belongs_to :user
  
end

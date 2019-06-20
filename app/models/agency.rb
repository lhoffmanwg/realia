class Agency < ApplicationRecord
  has_many :agents
  has_many :listings, through: :agents

  #accepts_nested_attributes_for :user


end

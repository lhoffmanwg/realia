class Agency < ApplicationRecord
  has_many :agents
  has_many :listings, through: :agents

  #accepts_nested_attributes_for :user

  def to_s
     #{}"#{agent.user.first_name} #{agent.user.last_name}"
  end


end

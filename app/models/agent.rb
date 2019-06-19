class Agent < ApplicationRecord
  has_many :listings

  #accepts_nested_attributes_for :user

  def to_s
     #{}"#{agent.user.first_name} #{agent.user.last_name}"
  end


end

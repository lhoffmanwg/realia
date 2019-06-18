class Agent < ApplicationRecord
  has_many :listings
  belongs_to :user

  def to_s
     "#{agent.user.first_name} #{agent.user.last_name}"
  end


end

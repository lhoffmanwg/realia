class Favorite < ApplicationRecord
  belongs_to :buyer
  belongs_to :listing

  def sort_by_most_faved
  end

  def buyer_with_most_favs
  end    


end

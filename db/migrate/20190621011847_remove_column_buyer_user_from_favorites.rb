class RemoveColumnBuyerUserFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :buyer_user, :integer
  end
end

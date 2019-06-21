class RemoveColumnBuyerIdFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :buyer_id, :integer
  end
end

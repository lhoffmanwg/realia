class AddColumnBuyerIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :buyer_id, :integer
  end
end

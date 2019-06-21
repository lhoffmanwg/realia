class AddColumnBuyerUserToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :buyer_user, :integer
  end
end

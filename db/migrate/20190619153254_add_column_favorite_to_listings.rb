class AddColumnFavoriteToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :favorite, :boolean
  end
end

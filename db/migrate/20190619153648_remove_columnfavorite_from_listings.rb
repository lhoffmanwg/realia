class RemoveColumnfavoriteFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :favorite, :boolean
  end
end

class AddRatingColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :rating, :integer
  end
end

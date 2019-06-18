class RemoveRatingIdColumnFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :rating_id, :integer
  end
end

class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :listing_id
      t.integer :buyer_id
      t.integer :rating

      t.timestamps
    end
  end
end

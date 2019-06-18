class AddColumnHousePicToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :house_pic, :string
  end
end

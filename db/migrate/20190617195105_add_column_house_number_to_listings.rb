class AddColumnHouseNumberToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :house_number, :integer
  end
end

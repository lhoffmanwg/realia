class AddColumnStreetToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :street, :string
  end
end

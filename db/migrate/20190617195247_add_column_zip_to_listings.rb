class AddColumnZipToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :zip, :integer
  end
end

class RemoveAdressColumnFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :address, :string
  end
end

class RemoveColumnDateSoldFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :date_sold, :datetime
  end
end

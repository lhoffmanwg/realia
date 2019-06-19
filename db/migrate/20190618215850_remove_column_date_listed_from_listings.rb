class RemoveColumnDateListedFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :date_listed, :datetime
  end
end

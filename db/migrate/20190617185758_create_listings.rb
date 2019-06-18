class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :address
      t.integer :price
      t.string :title
      t.string :description
      t.date :date_listed
      t.date :date_sold
      t.integer :agent_id

      t.timestamps
    end
  end
end

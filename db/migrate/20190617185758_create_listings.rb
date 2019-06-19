class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.integer :house_number
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :description
      t.datetime :date_listed
      t.datetime :date_sold
      t.string :house_pic
      t.integer :agent_id
      t.string :house_pic

      t.timestamps
    end
  end
end

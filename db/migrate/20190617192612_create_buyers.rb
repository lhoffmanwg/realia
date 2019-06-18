class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.integer :user_id
      t.integer :budget
      t.integer :bedrooms
      t.integer :bathrooms

      t.timestamps
    end
  end
end

class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :budget
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :password_digest

      t.timestamps
    end
  end
end

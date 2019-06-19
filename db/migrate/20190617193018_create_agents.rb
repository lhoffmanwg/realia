class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :agency
      t.integer :years_exp

      t.timestamps
    end
  end
end

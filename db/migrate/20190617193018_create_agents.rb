class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.integer :user_id
      t.string :agency
      t.integer :years_exp

      t.timestamps
    end
  end
end

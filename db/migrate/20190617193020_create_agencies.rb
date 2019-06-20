class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :agency_name
      t.datetime :year_founded

      t.timestamps
    end
  end
end

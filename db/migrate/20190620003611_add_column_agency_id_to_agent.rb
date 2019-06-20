class AddColumnAgencyIdToAgent < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :agency_id, :integer
  end
end

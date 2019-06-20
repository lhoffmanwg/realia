class RemoveColumnAgencyFromAgents < ActiveRecord::Migration[5.2]
  def change
    remove_column :agents, :agency, :string
  end
end

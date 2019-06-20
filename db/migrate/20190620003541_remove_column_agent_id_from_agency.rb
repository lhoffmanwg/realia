class RemoveColumnAgentIdFromAgency < ActiveRecord::Migration[5.2]
  def change
    remove_column :agencies, :agent_id, :integer
  end
end

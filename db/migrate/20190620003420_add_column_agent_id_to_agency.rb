class AddColumnAgentIdToAgency < ActiveRecord::Migration[5.2]
  def change
    add_column :agencies, :agent_id, :integer
  end
end

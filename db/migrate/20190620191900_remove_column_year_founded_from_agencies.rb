class RemoveColumnYearFoundedFromAgencies < ActiveRecord::Migration[5.2]
  def change
    remove_column :agencies, :year_founded, :datetime
  end
end

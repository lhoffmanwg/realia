class AddColumnYearFoundedToAgencies < ActiveRecord::Migration[5.2]
  def change
    add_column :agencies, :year_founded, :integer
  end
end

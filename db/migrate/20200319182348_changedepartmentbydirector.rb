class Changedepartmentbydirector < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :departement
    add_column :teams, :manager_id, :integer
  end
end

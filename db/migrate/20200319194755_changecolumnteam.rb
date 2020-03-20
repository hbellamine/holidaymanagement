class Changecolumnteam < ActiveRecord::Migration[5.2]
  def change

    rename_column :teams, :manager_id, :managermatricule
  end
end

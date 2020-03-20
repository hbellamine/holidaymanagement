class Removecolumnuser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :daysoff_id
    #remove_foreign_key :users, :daysoffs
    remove_column :users, :team_id
    #remove_foreign_key :users, :teams
  end
end

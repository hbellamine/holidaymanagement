class Addcolumnstouser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :firstname, :prenom
    rename_column :users, :lastname, :nom
    rename_column :users, :department, :direction
    add_column :users, :service, :integer
    add_column :users, :emploi, :integer
    add_reference  :users, :team, foreign_key:true
  end
end

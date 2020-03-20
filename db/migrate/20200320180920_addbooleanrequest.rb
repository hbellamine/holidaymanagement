class Addbooleanrequest < ActiveRecord::Migration[5.2]
  def change
    change_column :requests, :confirmed, :boolean, default: false
    add_column :requests, :commentaire, :text, default: ""
    add_column :requests, :managermatricule, :integer
  end
end

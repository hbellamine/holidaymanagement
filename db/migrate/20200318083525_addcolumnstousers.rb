class Addcolumnstousers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :accesstype, :integer
    add_column :users, :level, :integer
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :matricule, :string
    add_column :users, :department, :string
  end
end

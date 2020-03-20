class Adddatestouser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :datedenaissance, :date
    add_column :users, :datedembauche, :date
  end
end

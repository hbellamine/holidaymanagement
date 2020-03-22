class Confirmedtoenum < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :confirmed, :integer, default: 0
    add_column :requests, :confirmed, :integer, default: 0
  end
end

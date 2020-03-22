class Changecolumntorequest < ActiveRecord::Migration[5.2]
  def change
    change_column :requests, :dates, :string
  end
end

class Addcolumntorequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :dates, :text
  end
end

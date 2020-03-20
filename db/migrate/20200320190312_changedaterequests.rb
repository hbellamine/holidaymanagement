class Changedaterequests < ActiveRecord::Migration[5.2]
  def change
    change_column :requests, :startdate, :string
    change_column :requests, :enddate, :string
  end
end

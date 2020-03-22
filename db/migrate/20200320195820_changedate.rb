class Changedate < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :startdate
    remove_column :requests, :enddate
    add_column :requests, :startdate, :datetime
    add_column :requests, :enddate, :datetime
  end
end

class Datechange < ActiveRecord::Migration[5.2]
  def change
    change_column :requests, :startdate, :date
    change_column :requests, :enddate, :date
  end
end

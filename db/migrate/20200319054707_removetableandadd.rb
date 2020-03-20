class Removetableandadd < ActiveRecord::Migration[5.2]
  def change
    drop_table :daysoffs
    add_column :users, :paiddaysoff, :integer
    add_column :users, :unpaiddaysoff, :integer
    add_column :users, :absenteism, :integer
    add_column :users, :injurydaysoff, :integer
  end
end

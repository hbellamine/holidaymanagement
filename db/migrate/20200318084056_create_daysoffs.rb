class CreateDaysoffs < ActiveRecord::Migration[5.2]
  def change
    create_table :daysoffs do |t|
      t.integer :paiddaysoff
      t.integer :unpaiddaysoff
      t.float :absenteism
      t.integer :injurydaysoff

      t.timestamps
    end
  end
end

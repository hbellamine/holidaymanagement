class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.date :startdate
      t.date :enddate
      t.boolean :confirmed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class Removeforeignkey < ActiveRecord::Migration[5.2]
  def change
 remove_foreign_key :teams, :users
  end
end

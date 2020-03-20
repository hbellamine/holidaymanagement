class Changeemploitostring < ActiveRecord::Migration[5.2]
  def change

    change_column :users, :emploi, :string
    change_column :users, :service, :string
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Team.destroy_all

require 'csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'app/assets/images/teams.csv'



CSV.foreach(filepath, csv_options) do |row|
  Team.create(name: row['Name'],managermatricule: row['managermatricule'])
end




csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'app/assets/images/personnel.csv'



CSV.foreach(filepath, csv_options) do |row|

  if (row['accesstype'] == "manager")
    team = Team.where(name: "DIRECTION GENERALE")
  else
    team = Team.where(name: row['Direction'])
  end

  User.create(matricule: row['Mat'],nom: row['Nom'],
    prenom: row['Prénom'],direction: row['Direction'],service: row['Service'],
    emploi: row['Emploi'],
    datedenaissance: row['Date Naiss.'],datedembauche: row['Date Emb.'],email: row['email'],
    password: row['encrypted_password'],accesstype: row['accesstype'],
    paiddaysoff: row['paiddaysoff'],unpaiddaysoff: row['unpaiddaysoff'],
    absenteism: row['absenteism'], injurydaysoff: row['injurydaysoff'], team: team[0] )

end

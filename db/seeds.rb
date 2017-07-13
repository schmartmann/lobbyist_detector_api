# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Lobbyist.destroy_all


File.open('db/test.txt').each do |line|
  line = line.split("|,").map! { |x| x.gsub!(/[|]/, '')}
  Lobbyist.create(
    uniqID: line[0],
    lobbyist_raw: line[1],
    lobbyist_stdrd: line[2],
    lobbyist_id: line[3],
    year: line[4],
    official_position: line[5],
    cid: line[6],
    frmr_congress_mem: line[7] == "y"? true : false
  )
end

print Lobbyist.all.size

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
print "Creating users..."
User.destroy_all
u1 = User.create! email: 'luke@ga.co', password: 'chicken', name: 'Luke'
u2 = User.create! email: 'mikaela@ga.co', password: 'chicken', name: 'Mikaela'
u3 = User.create! email: 'zara@ga.co', password: 'chicken', name: 'Zara'
puts "Created #{ User.count } users."

puts "Creating teams..."
Team.destroy_all
t1 = Team.create! name: 'Arsenal'
t2 = Team.create! name: 'Chelsea'
t3 = Team.create! name: 'Liverpool'
t4 = Team.create! name: 'Manchester United'
t5 = Team.create! name: 'Manchester City'
t6 = Team.create! name: 'Tottenham Hotspurs'
t7 = Team.create! name: 'Leicester'
puts "Created #{ Team.count } teams."

print "Creating players..."
Player.destroy_all
p1 = Player.create! name: 'Pierre-Emerick Aubameyang'
p2 = Player.create! name: 'Nicolas Pepe'
p3 = Player.create! name: 'Tammy Abraham'
p4 = Player.create! name: 'Cesar Azpilicueta'
p5 = Player.create! name: 'Paul Pogba'
p6 = Player.create! name: 'Bruno Fernandes'
p7 = Player.create! name: 'Sergio Aguero'
p8 = Player.create! name: 'Ederson'
p9 = Player.create! name: 'Sadio Mane'
p10 = Player.create! name: 'Mohammad Salah'
p11 = Player.create! name: 'Son Heung-Min'
p12 = Player.create! name: 'Serge Aurier'
p13= Player.create! name: 'Caglar Soyuncu'
p14 = Player.create! name: 'Ben chilwell'
puts "Created #{ Player.count } players."

puts "Creating teams..."
Fantasyteam.destroy_all
t1 = Fantasyteam.create! name: 'HowdeFC', user_id: u1.id
t2 = Fantasyteam.create! name: 'MulaFC', user_id: u2.id
t3 = Fantasyteam.create! name: 'GoolshunG Rovers', user_id: u3.id
t4 = Fantasyteam.create! name: 'HSK-7', user_id: u1.id
t5 = Fantasyteam.create! name: 'LIFE DAMAGE XI', user_id: u1.id
t6 = Fantasyteam.create! name: 'Target', user_id: u1.id
t7 = Fantasyteam.create! name: 'Minions', user_id: u1.id
puts "Created #{ Fantasyteam.count } teams."

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
puts "created #{ User.count } users."

puts "Creating teams..."
Team.destroy_all
t1 = Team.create! name: 'Arsenal'
t2 = Team.create! name: 'Chelsea'
t3 = Team.create! name: 'Liverpool'
t4 = Team.create! name: 'Manchester United'
t5 = Team.create! name: 'Manchester City'
t6 = Team.create! name: 'Tottenham Hotspurs'
t7 = Team.create! name: 'Leicester'
puts "created #{ Team.count } teams."

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
puts "created #{ Player.count } players."

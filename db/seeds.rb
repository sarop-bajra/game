# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
print "Creating users..."
User.destroy_all
u1 = User.create! email: 'luke@ga.co', password: 'chicken', name: 'Luke', image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353352/Avatar_Dog-512_v1wwe9.png'
u2 = User.create! email: 'mikaela@ga.co', password: 'chicken', name: 'Mikaela', image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353381/Avatar_Panda-512_ntkuqu.png'
u3 = User.create! email: 'zara@ga.co', password: 'chicken', name: 'Zara', image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353366/Avatar_Cat-512_z1rkgd.png'
puts "Created #{ User.count } users."

puts "Creating teams..."
Team.destroy_all
t1 = Team.create! name: 'Arsenal', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597265109/Project/Teams/580b57fcd9996e24bc43c4df_jhelrq.png'
t2 = Team.create! name: 'Chelsea', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597265085/Project/Teams/580b57fcd9996e24bc43c4e1_hxkhiw.png'
t3 = Team.create! name: 'Liverpool', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597265060/Project/Teams/580b57fcd9996e24bc43c4e5_ghrr3t.png'
t4 = Team.create! name: 'Manchester United', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597264989/Project/Teams/580b57fcd9996e24bc43c4e7_ohgxte.png'
t5 = Team.create! name: 'Manchester City', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597264965/Project/Teams/580b57fcd9996e24bc43c4e6_f5iypg.png'
t6 = Team.create! name: 'Tottenham Hotspurs', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597265036/Project/Teams/580b57fcd9996e24bc43c4ee_zbwy3h.png'
t7 = Team.create! name: 'Leicester', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597265013/Project/Teams/580b57fcd9996e24bc43c4e8_iliqhw.png'
puts "Created #{ Team.count } teams."

print "Creating players..."
Player.destroy_all
p1 = Player.create! name: 'Pierre-Emerick Aubameyang', image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597264057/Project/Players/Aubameyang_dlb2g7.png', team_id: t1.id
p2 = Player.create! name: 'Nicolas Pepe', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597264033/Project/Players/P%C3%A9p%C3%A9_o7wbo6.png', team_id: t1.id
p3 = Player.create! name: 'Tammy Abraham', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597264009/Project/Players/Abraham_akqzn0.png', team_id: t2.id
p4 = Player.create! name: 'Cesar Azpilicueta', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263984/Project/Players/Azpilicueta_x8nln1.png', team_id: t2.id
p5 = Player.create! name: 'Paul Pogba', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263696/Project/Players/Pogba_k1bqmq.png', team_id: t3.id
p6 = Player.create! name: 'Bruno Fernandes', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263673/Project/Players/Fernandes_l6mbqk.png', team_id: t3.id
p7 = Player.create! name: 'Sergio Aguero', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263902/Project/Players/Ag%C3%BCero_decotb.png', team_id: t4.id
p8 = Player.create! name: 'Ederson', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263856/Project/Players/Ederson_cj4nqr.png', team_id: t4.id
p9 = Player.create! name: 'Sadio Mane', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263960/Project/Players/Man%C3%A9_wgxz8q.png', team_id: t5.id
p10 = Player.create! name: 'Mohammad Salah', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263935/Project/Players/Salah_rx9tqh.png', team_id: t5.id
p11 = Player.create! name: 'Son Heung-Min', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263809/Project/Players/Son_mitstg.png', team_id: t6.id
p12 = Player.create! name: 'Serge Aurier', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263770/Project/Players/Aurier_bo8ppe.png', team_id: t6.id
p13 = Player.create! name: 'Caglar Soyuncu', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263743/Project/Players/S%C3%B6y%C3%BCnc%C3%BC_dl6jqv.png', team_id: t7.id
p14 = Player.create! name: 'Ben chilwell', image:'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_250/v1597263719/Project/Players/Chilwell_y1outv.png', team_id: t7.id
puts "Created #{ Player.count } players."

puts "Creating teams..."
Fantasyteam.destroy_all
ft1 = Fantasyteam.create! name: 'HowdeFC', user_id: u1.id, image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353096/avatar-avatars-ninja-profile-user-icon-user-avatars-png-512_512_nrtryv.png'
ft2 = Fantasyteam.create! name: 'MulaFC', user_id: u1.id, image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353397/Avatar_Pig-512_roxart.png'
ft3 = Fantasyteam.create! name: 'GoolshunG Rovers', user_id: u2.id, image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353414/Avatar_Pumpkin-512_syuxzu.png'
ft4 = Fantasyteam.create! name: 'HSK-7', user_id: u2.id, image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353339/Avatar_Rabbit-512_unqcna.png'
ft5 = Fantasyteam.create! name: 'LIFE DAMAGE XI', user_id: u3.id, image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353327/034_Thanos-512_hzmqzj.png'
ft6 = Fantasyteam.create! name: 'Target', user_id: u3.id, image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353451/profile_llama_4x_cbdhlm.png'
ft7 = Fantasyteam.create! name: 'Minions', user_id: u1.id, image: 'https://res.cloudinary.com/sarop-bajra/image/upload/c_scale,w_200/v1597353089/User_Avatar-04-512_xq0kjz.png'
puts "Created #{ Fantasyteam.count } teams."

ft1.players << p1 << p2 << p3 << p4 << p5
ft2.players << p6 << p7 << p8 << p9 << p10
ft3.players << p11 << p12 << p13 << p14 << p1
ft4.players << p1 << p2 << p3 << p4 << p5
ft5.players << p6 << p7 << p8 << p9 << p10
ft6.players << p11 << p12 << p13 << p14 << p1
ft7.players << p11 << p12 << p13 << p14 << p3

puts "Test fantasy team associations"
print "The fantasy team '#{ ft1.name }' has players: "
puts ft1.players.pluck(:name).join(', ')

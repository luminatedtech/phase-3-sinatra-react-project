Region.create(name: "Kanto")
Region.create(name: "Johto")
Region.create(name: "Hoenn")
Region.create(name: "Sinnoh")
Region.create(name: "Unova")
Region.create(name: "Kalos")
Region.create(name: "Aloha")

Type.create(type_name: "Water")
Type.create(type_name: "Fire")
Type.create(type_name: "Grass")
Type.create(type_name: "Flying")
Type.create(type_name: "Rock")
Type.create(type_name: "Ground")
Type.create(type_name: "Fighting")
Type.create(type_name: "Dragon")
Type.create(type_name: "Steel")
Type.create(type_name: "Normal")
Type.create(type_name: "Psychic")
Type.create(type_name: "Ghost")
Type.create(type_name: "Dark")
Type.create(type_name: "Electric")
Type.create(type_name: "Bug")



Trainer.create(name: "Lorelei", region_id: 1, title: "First")

puts "✅ Done seeding!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ride.create!(name: 'Astro Orbiter', park: :magic_kingdom)
Ride.create!(name: 'Cinderella Castle', park: :magic_kingdom)
Ride.create!(name: 'Dumbo the Flying Elephant', park: :magic_kingdom)

Ride.create!(name: 'DinoLand', park: :animal_kingdom)
Ride.create!(name: 'Festival of the Lion King', park: :animal_kingdom)
Ride.create!(name: 'Pandora, the World of Avatar', park: :animal_kingdom)

Ride.create!(name: 'Catastrophe Canyon', park: :studios)
Ride.create!(name: 'Fantasmic!', park: :studios)
Ride.create!(name: 'Pixar Place', park: :studios)

Ride.create!(name: 'Typhoon Lagoon', park: :water)
Ride.create!(name: 'Beach Water Park', park: :water)
Ride.create!(name: 'Oak Trail Golf Course', park: :water)

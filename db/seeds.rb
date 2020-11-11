# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom",
            address: "7 Boundary St, London E2 7JE",
            phone_number: "0680848864",
            category: "italian" }
pizza_east = { name: "Pizza East",
               address: "18 Avenue Voltaire, Paris 75011",
               phone_number: "0655436671",
               category: "italian" }
le_favori = { name: "Le Favori",
              address: "65 Rue Saint Maur, Paris 75011",
              phone_number: "0670889123",
              category: "chinese" }
chez_justine = { name: "Chez Justine",
                 address: "75 Rue Oberkampf, Paris 75011",
                 phone_number: "0672839133",
                 category: "italian" }
cafe_foufou = { name: "Cafe Foufou",
                address: "10 Rue Oberkampf, Paris 75011",
                phone_number: "0655891143",
                category: "french" }

[dishoom, pizza_east, le_favori, chez_justine, cafe_foufou].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

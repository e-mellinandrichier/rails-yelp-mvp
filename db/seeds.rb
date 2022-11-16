# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0787656765", category: "italian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0864647957", category: "french" }
la_cabane_en_ville = { name: "La cabane en ville", address: "Quelque part à Aix ", phone_number: "0787656987", category: "japanese" }
la_villa = { name: "La Villa", address: "Quelque part à Marseille", phone_number: "0787635765", category: "belgian" }
ciel = { name: "Ciel", address: "Au dessus de nos têtes", phone_number: "0763656765", category: "chinese" }

[dishoom, pizza_east,la_cabane_en_ville, la_villa, ciel].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

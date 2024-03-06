# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "Boundary St, London E2 7JE", phone_number: "00 00 00 00 00" , category: "chinese" }
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London El 6", phone_number: "00 00 00 00 11", category: "italian" }
tripletta = {name: "Tripletta", address: "5 rue de Montparnasse, Paris", phone_number: "00 00 00 11 11", category: "japanese" }
chez_pierre = {name: "Chez Pierre", address: "32 rue de Jean-Pierre, Paris", phone_number: "00 00 11 11 11", category: "french" }
la_faim = {name: "La faim", address: "67 rue des affamés, Paris", phone_number: "00 11 11 11 11", category: "belgian" }

[dishoom, pizza_east, tripletta, chez_pierre, la_faim].each do |attributes|
  restaurant = Restaurant.create! (attributes)
  puts "Created #restaurant.name"
end
puts "Finished!"

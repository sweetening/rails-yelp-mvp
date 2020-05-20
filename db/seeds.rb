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
superiority_burger = { name: "Superiority Burger", address: "East Village", phone_number: "718_420_6666", category: "french" }
toad_style =  { name: "Toad Style", address: "Bedstuy", phone_number: "718_421_6666", category: "italian" }
champs = { name: "Champ's", address: "Williamsburg", phone_number: "718_422_6666", category: "japanese" }
hartbreakers =  { name: "Hartbreakers", address: "Bushwick", phone_number: "718_423_6666", category: "belgian" }
peacefood = { name: "Peacefood Cafe", address: "Union Square", phone_number: "718_424_6666", category: "chinese" }
[ superiority_burger, toad_style, champs, hartbreakers, peacefood ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

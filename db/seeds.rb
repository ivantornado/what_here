# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Spot.destroy_all

Spot.create!(
  name: "Mosteiro dos Jerónimos",
  description: "Late Gothic Manueline-style monastery housing archaeology & maritime museums in its wings.",
  price: 4,
  category: "monument",
  latitude: 38.697767982055346,
  longitude: -9.206633604395881,
  spot_location: "Praça do Império 1400-206 Lisboa"
)

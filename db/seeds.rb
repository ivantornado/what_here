# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Spot.destroy_all
Folder.destroy_all
User.destroy_all

# @client = GooglePlaces::Client.new(ENV.fetch('API_KEY'))
# @places = @client.spots(38.725119, -9.150248, radius: 500, types: ['point_of_interest'])
# # @places = @client.spots_by_query(search, radius: radius, types: selected, exclude: unselected)
# @places.each do |place|
#   next if place.photos.empty?

#   Spot.create(
#     name: place.name,
#     spot_location: place.vicinity,
#     latitude: place.lat,
#     longitude: place.lng,
#     description: "https://maps.googleapis.com/maps/api/place/details/",
#     photo: "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&maxheight=400&photo_reference=#{place.photos[0].photo_reference}&key=#{ENV.fetch('API_KEY')}",
#     rating: place.rating
#   )
# end

Spot.create(
  name: "Pink Street",
  spot_location: "Rua Nova do Carvalho - 0.4km from city center.",
  category: "Nightlife",
  description: "Lively street with restaurants, bars and nightlife ",
  photo: "https://scontent.flis8-1.fna.fbcdn.net/v/t39.30808-6/242795824_10159434252881605_862641529372303940_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=9267fe&_nc_ohc=WwpQxvIOtgQAX8nQ9Ui&_nc_ht=scontent.flis8-1.fna&oh=00_AfCHKfE3NngCnP0j4FF9c1AI6_sFgoTww5d-1h80va0YzA&oe=6416829A",
  rating: 4.2
)

Spot.create(
  name: "Terreiro do Paço",
  spot_location: "Praça do Comércio - 0.7km from city center.",
  category: "Monument",
  description: "With beautiful eighteenth century symmetrical buildings and arcades facing the River Tejo, Terreiro do Paço is one of Lisbon’s most important and beautiful squares. The large open space, mostly pedestrian, is a must-see destination for visitors to Lisbon.",
  photo: "https://images.pexels.com/photos/1548024/pexels-photo-1548024.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  rating: 4.5
)


User.create!(
  email: "admin@admin.com",
  password: "adminadmin"
)

User.create!(
  email: "user@user.com",
  password: "useruser"
)

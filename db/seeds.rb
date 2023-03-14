# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Spot.destroy_all

@client = GooglePlaces::Client.new(ENV.fetch('API_KEY'))
@places = @client.spots(38.725119, -9.150248, radius: 500, types: ['point_of_interest'])
# @places = @client.spots_by_query(search, radius: radius, types: selected, exclude: unselected)
@places.each do |place|
  next if place.photos.empty?

  Spot.create(
    name: place.name,
    spot_location: place.vicinity,
    latitude: place.lat,
    longitude: place.lng,
    description: "https://maps.googleapis.com/maps/api/place/details/",
    photo: "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&maxheight=400&photo_reference=#{place.photos[0].photo_reference}&key=#{ENV.fetch('API_KEY')}",
    rating: place.rating
  )
end

User.destroy_all

User.create!(
  email: "admin@admin.com",
  password: "adminadmin"
)

User.create!(
  email: "user@user.com",
  password: "useruser"
)

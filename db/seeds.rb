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
  name: 'Sagrada Familia',
  spot_location: 'C/ de Sardenya - 2.8km from centre',
  description: 'Sagrada Familia is a world-renowned Roman Catholic church in Barcelona, Spain, designed by architect Antoni Gaudi, characterized by its unique Gothic and Art Nouveau architectural style and ongoing construction since 1882.',
  photo: "https://images.pexels.com/photos/819764/pexels-photo-819764.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  rating: 4.7
)

Spot.create(
  name: 'Boqueria Market',
  spot_location: 'La Rambla, 91 - 1.1km from centre',
  description: 'Boqueria Market is a vibrant public market in the heart of Barcelona, known for its colorful displays of fresh produce, seafood, and other culinary delights.',
  photo: "https://images.pexels.com/photos/10419816/pexels-photo-10419816.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  rating: 4.5
)

Spot.create(
  name: 'Camp Nou Spotify',
  spot_location: "C. d'Arístides Maillol - 5.4km from centre",
  description: 'Camp Nou is a world-famous football stadium in Barcelona, home to FC Barcelona, and one of the largest stadiums in Europe with a seating capacity of over 99,000.',
  photo: "https://images.unsplash.com/photo-1598121876853-82437626c783?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  rating: 4.6
)

Spot.create(
  name: 'Barceloneta Beach',
  spot_location: "Playa De La Barceloneta - 2.5km from centre",
  description: 'Barceloneta Beach is a popular urban beach in Barcelona, located in the Barceloneta neighborhood, offering golden sands, clear waters, and a lively atmosphere with restaurants, bars, and water sports activities.',
  photo: "https://images.unsplash.com/photo-1610213989414-acc5773ba2c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
  rating: 4.4
)

Spot.create(
  name: 'El Gòtic',
  spot_location: "El Gòtic - 2.5km from centre",
  description: 'El Gotic is a historic neighborhood in the heart of Barcelona, known for its labyrinthine streets, Gothic architecture, ancient landmarks, and vibrant nightlife, making it a popular tourist destination.',
  photo: "https://images.unsplash.com/photo-1671683887173-fd7dffcb064b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  rating: 4.5
)

Spot.create(
  name: "Oxford Street",
  spot_location: "Oxford Street - 1.2km from city center.",
  category: "Shopping",
  description: "Busy area with shopping stores, bars and restaurants",
  photo: "https://www.ldnfashion.com/wp-content/uploads/2017/11/Oxford-Street.jpg",
  rating: 4.3
)
Spot.create(
  name: "Covent Garden",
  spot_location: "Oxford Street - 1.2km from city center.",
  category: "Shopping",
  description: "A shopping and entertainment hub in London's West End, Covent Garden centres on the elegant, car-free Piazza, home to fashion stores, craft stalls at the Apple Market, and the Royal Opera House.",
  photo: "https://i.pinimg.com/originals/61/71/6e/61716ec59c0ba11178d7e98d9d763073.jpg",
  rating: 4.3
)
Spot.create(
  name: "Brick Lane",
  spot_location: "Oxford Street - 1.2km from city center.",
  category: "Shopping",
  description: "Brick Lane is a vibrant and eclectic area in East London known for its diverse community, street art, and thriving cultural scene. The area boasts a plethora of independent bookshops, vintage clothing stores, and cafes, making it a popular destination for those looking for unique finds and a taste of the local culture.",
  photo: "https://i0.wp.com/essentialldn.com/wp-content/uploads/2020/07/DSCF4341.jpg?fit=720%2C480&ssl=1",
  rating: 4.3
)
Spot.create(
  name: "London Eye",
  spot_location: "Riverside Building, County Hall - 0.4km from city center.",
  category: "Attraction",
  description: "Huge observation wheel giving passengers a privileged bird's-eye view of the city's landmarks.",
  photo: "https://images.unsplash.com/photo-1582027013518-0e9d9633a2d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3027&q=80",
  rating: 4.3
)
Spot.create(
  name: "Big Ben",
  spot_location: "Palace of Webminister - .1km from city center.",
  category: "Landmark",
  description: "16-storey Gothic clocktower and national symbol at the Eastern end of the Houses of Parliament",
  photo: "https://images.unsplash.com/photo-1592509255531-161181e0cb8d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  rating: 3.7
)
Spot.create(
  name: "Camden Town",
  spot_location: "406 Camden Lock Market - 4.2km from city center.",
  category: "Point of Interest",
  description: "Camden Town is famed for its market, a warren of fashion and curiosities by the Regent’s Canal. A haven of counter culture, the area is popular with tourists, teenagers and punks. The thriving nightlife scene includes live music in alternative clubs and old-school pubs, and major stars playing at the Jazz Cafe and the Roundhouse.",
  photo: "https://img.itinari.com/pages/images/original/44eb6073-9978-45aa-93ea-da61a7ecabd4-istock-521303228.jpg?ch=DPR&dpr=2&w=1600&s=30f4274b7205b6fc97776b4f6bce2a18",
  rating: 4.4
)

Spot.create(
  name: "Pink Street",
  spot_location: "Rua Nova do Carvalho - 0.4km from city center.",
  category: "Nightlife",
  description: "Pink Street is a vibrant and lively street in Lisbon's Cais do Sodré neighborhood known for its pink pavement, bars, clubs, and restaurants, and bustling nightlife. It has a rich history as a former red-light district and has undergone urban renewal in recent years, making it a popular destination for visitors.",
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

Spot.create(
  name: "Torre de Belém",
  spot_location: "Av. Brasília, 1400-038 - 6.9km from city center.",
  category: "Monument",
  description: "The Torre de Belém is a famous fortified tower located in the Belem district of Lisbon, Portugal. The tower was built in the early 16th century and is a prime example of Manueline style architecture, which is characterized by intricate carvings, maritime motifs, and elements of the Age of Discovery.",
  photo: "https://images.pexels.com/photos/4304223/pexels-photo-4304223.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  rating: 4.6
)


User.create!(
  username: "Admin",
  email: "admin@admin.com",
  password: "adminadmin"
)

xico = User.create!(
  username: "Xico Figueiredo",
  email: "xico@xico.com",
  password: "xicoxico"
)

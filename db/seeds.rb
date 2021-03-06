# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
Location.destroy_all
Review.destroy_all
Amenity.destroy_all
Activity.destroy_all
Terrain.destroy_all
Reservation.destroy_all
LocationAmenity.destroy_all
LocationActivity.destroy_all
LocationTerrain.destroy_all

# ActiveStorage::Attachment.all.each { |attachment| attachment.purge }
User.connection.execute('ALTER SEQUENCE users_id_seq RESTART WITH 1')
Location.connection.execute('ALTER SEQUENCE locations_id_seq RESTART WITH 1')
Review.connection.execute('ALTER SEQUENCE reviews_id_seq RESTART WITH 1')
Amenity.connection.execute('ALTER SEQUENCE amenities_id_seq RESTART WITH 1')
Activity.connection.execute('ALTER SEQUENCE activities_id_seq RESTART WITH 1')
Terrain.connection.execute('ALTER SEQUENCE terrains_id_seq RESTART WITH 1')
Reservation.connection.execute('ALTER SEQUENCE reservations_id_seq RESTART WITH 1')
LocationAmenity.connection.execute('ALTER SEQUENCE location_amenities_id_seq RESTART WITH 1')
LocationActivity.connection.execute('ALTER SEQUENCE location_activities_id_seq RESTART WITH 1')
LocationTerrain.connection.execute('ALTER SEQUENCE location_terrains_id_seq RESTART WITH 1')


#Users
jack = User.create({email: 'jack@fakeemail.com', f_name: 'Jac', l_name: 'Liu',  password: 'test123'})
sam = User.create({email: 'sam@fakeemail.com', f_name: 'Sam', l_name: 'Sacco',  password: 'test123'})
justin = User.create({email: 'justin@fakeemail.com', f_name: 'Justin', l_name: 'Meyer',  password: 'test123'})


#Locations
loc1 = Location.create({title: 'Demo 1 Title', description: 'first', price: 20, lat: '40.622090', lng: '-74.027770', host_id: 1})
loc2 = Location.create({title: 'Demo 2 Title', description: 'second', price: 25, lat: '40.61875788213594', lng: '-74.02135541745368', host_id: 2})
loc3 = Location.create({title: 'Demo 3 Title', description: 'third', price: 30, lat: '40.62188557436985', lng: '-74.02603805437263', host_id: 3})
loc4 = Location.create({title: 'Demo 4 Title', description: 'fourth', price: 35, lat: '40.61173432002289', lng: '-74.00952715634452', host_id: 1})

#Reviews
review1 = Review.create({body: "I really enjoyed the property and the host was wonderful", author_id: 2 , location_id: 1})
review2 = Review.create({body: "Jack really did a great job on the property, 10/10", author_id: 3, location_id: 1})
review3 = Review.create({body: "I really enjoyed the property and the host was wonderful", author_id: 1, location_id: 2})
review4 = Review.create({body: "Sam, you're that guy", author_id: 1, location_id: 2})
review5 = Review.create({body: "Sam, really did a great job on the property, 10/10", author_id: 3, location_id: 2})

#Amenities
am1 = Amenity.create({name:"Shower" , description: "Showers avaliable"})
am2 = Amenity.create({name:"Water" , description: "Portable water available"})
am3 = Amenity.create({name:"Wifi" , description: "Wifi available"})

#Activities
ac1 = Activity.create({name: "Biking", description:"We offer bike rentals"})
ac2 = Activity.create({name: "Fishing", description:"We have a stream that runs along the property that is filled with fishes"})
ac3 = Activity.create({name: "Swimming", description:"We got a pool too"})

#Location Amenities
lam1 = LocationAmenity.create({location_id: 1, amenity_id: 1})
# lam2 = LocationAmenity.create({location_id: 1, amenity_id: 2})
# lam3 = LocationAmenity.create({location_id: 1, amenity_id: 3})

# lam4 = LocationAmenity.create({location_id: 2, amenity_id: 1})
lam5 = LocationAmenity.create({location_id: 2, amenity_id: 2})
# lam6 = LocationAmenity.create({location_id: 2, amenity_id: 3})

# lam7 = LocationAmenity.create({location_id: 3, amenity_id: 1})
# lam8 = LocationAmenity.create({location_id: 3, amenity_id: 2})
lam9 = LocationAmenity.create({location_id: 3, amenity_id: 3})

lam10 = LocationAmenity.create({location_id: 4, amenity_id: 1})
lam11 = LocationAmenity.create({location_id: 4, amenity_id: 2})
lam12 = LocationAmenity.create({location_id: 4, amenity_id: 3})

#Location Activities

lac1 = LocationActivity.create({location_id: 1, activity_id: 1})
lac2 = LocationActivity.create({location_id: 1, activity_id: 2})
lac3 = LocationActivity.create({location_id: 1, activity_id: 3})

lac4 = LocationActivity.create({location_id: 2, activity_id: 1})
lac5 = LocationActivity.create({location_id: 2, activity_id: 2})
lac6 = LocationActivity.create({location_id: 2, activity_id: 3})

lac7 = LocationActivity.create({location_id: 3, activity_id: 1})
lac8 = LocationActivity.create({location_id: 3, activity_id: 2})
lac9 = LocationActivity.create({location_id: 3, activity_id: 3})

lac10 = LocationActivity.create({location_id: 4, activity_id: 1})
lac11 = LocationActivity.create({location_id: 4, activity_id: 2})
lac12 = LocationActivity.create({location_id: 4, activity_id: 3})

#Terrains 

t1 = Terrain.create({name: "Forest", description:"The property is filled with a lush amount of pine trees."})
t2 = Terrain.create({name: "River", description:"Nearby there is river used for fishing and swimming."})
t3 = Terrain.create({name: "Mountain", description:"There is a mountain nearby often used for hiking."})

#Location Terrains

lac1 = LocationTerrain.create({location_id: 1, terrain_id: 1})
lac2 = LocationTerrain.create({location_id: 1, terrain_id: 2})
lac3 = LocationTerrain.create({location_id: 1, terrain_id: 3})

lac4 = LocationTerrain.create({location_id: 2, terrain_id: 1})
lac5 = LocationTerrain.create({location_id: 2, terrain_id: 2})
lac6 = LocationTerrain.create({location_id: 2, terrain_id: 3})

lac7 = LocationTerrain.create({location_id: 3, terrain_id: 1})
lac8 = LocationTerrain.create({location_id: 3, terrain_id: 2})
lac9 = LocationTerrain.create({location_id: 3, terrain_id: 3})

lac10 = LocationTerrain.create({location_id: 4, terrain_id: 1})
lac11 = LocationTerrain.create({location_id: 4, terrain_id: 2})
lac12 = LocationTerrain.create({location_id: 4, terrain_id: 3})


require 'open-uri'

file1 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l1-a.jpg')

file2 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l1-b.jpg')

file3 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l1-c.jpg')

file4 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l2-a.jpg')

file5 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l2-b.jpg')

file6 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l2-c.jpg')

file7 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l3-a.jpg')

file8 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l3-b.jpg')

file9 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l3-c.jpg')

file10 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l4-a.jpg')

file11 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l4-b.jpg')

file12 = open('https://campcentral-seed.s3.amazonaws.com/locations-images/l4-c.jpg')

jack_photo = open('https://campcentral-seed.s3.amazonaws.com/profile-images/jack_photo.jpg')

sam_photo = open('https://campcentral-seed.s3.amazonaws.com/profile-images/sam_photo.jpg')

justin_photo = open('https://campcentral-seed.s3.amazonaws.com/profile-images/justin_photo.jpg')

#Reservation

r1 = Reservation.create({start_date: Date.new(2021, 11, 1), end_date: Date.new(2021, 11, 4), user_id: 1, location_id: 1, guest_amount: 3 })
r1 = Reservation.create({start_date: Date.new(2021, 11, 9), end_date: Date.new(2021, 11, 12), user_id: 1, location_id: 2, guest_amount: 2 })
r1 = Reservation.create({start_date: Date.new(2021, 12, 2), end_date: Date.new(2022, 1, 12), user_id: 1, location_id: 3, guest_amount: 1 })

#images
# f1 = File.open('app/assets/images/l1-a.jpg')
# f2 = File.open('app/assets/images/l1-b.jpg')
# f3 = File.open('app/assets/images/l1-c.jpg')

# f4 = File.open('app/assets/images/l2-a.jpg')
# f5 = File.open('app/assets/images/l2-b.jpg')
# f6 = File.open('app/assets/images/l2-c.jpg')

# f7 = File.open('app/assets/images/l3-a.jpg')
# f8 = File.open('app/assets/images/l3-b.jpg')
# f9 = File.open('app/assets/images/l3-c.jpg')

# f10 = File.open('app/assets/images/l4-a.jpg')
# f11 = File.open('app/assets/images/l4-b.jpg')
# f12 = File.open('app/assets/images/l4-c.jpg')

jack.photo.attach(io: jack_photo, filename: 'jack_photo.jpg')
sam.photo.attach(io: sam_photo, filename: 'sam_photo.jpg')
justin.photo.attach(io: justin_photo, filename: 'justin_photo.jpg')


loc1.photos.attach(io: file1, filename: 'l1-a.jpg')
loc1.photos.attach(io: file2, filename: 'l1-b.jpg')
loc1.photos.attach(io: file3, filename: 'l1-c.jpg')

loc2.photos.attach(io: file4, filename: 'l2-a.jpg')
loc2.photos.attach(io: file5, filename: 'l2-b.jpg')
loc2.photos.attach(io: file6, filename: 'l2-c.jpg')

loc3.photos.attach(io: file7, filename: 'l3-a.jpg')
loc3.photos.attach(io: file8, filename: 'l3-b.jpg')
loc3.photos.attach(io: file9, filename: 'l3-c.jpg')

loc4.photos.attach(io: file10, filename: 'l4-a.jpg')
loc4.photos.attach(io: file11, filename: 'l4-b.jpg')
loc4.photos.attach(io: file12, filename: 'l4-c.jpg')
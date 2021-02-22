# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
def open_file(file)
  URI.open(file)
end
# create 2 users 
# seller
karen = User.new(email: 'karenmiller@gmail.com', password: 'karen123')
john = User.new(email: 'johncrumpet@gmail.com', password: 'john123')
reilly = User.new(email: 'reillylopex@gmail.com', password: 'reilly123')
pedro = User.new(email: 'pedromarquez@gmail.com', password: 'pedro123')
lily = User.new(email: 'lilymiller@aol.net', password: 'lily123')
# user
roger = User.new(email: 'roger@smith.co.uk', password: 'roger123')

# avatars
karen_pic = open_file("https://images.unsplash.com/photo-1596215143922-eedeaba0d91c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
karen.avatar.attach(io: karen_pic, filename: 'karen.jpg', content_type: 'image/jpg')
karen.save

john_pic = open_file("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
john.avatar.attach(io: john_pic, filename: 'john.jpg', content_type: 'image/jpg')
john.save

reilly_pic = open_file("https://images.unsplash.com/photo-1542131596-dea5384842c7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
reilly.avatar.attach(io: reilly_pic, filename: 'reilly.jpg', content_type: 'image/jpg')
reilly.save

pedro_pic = open_file("https://images.unsplash.com/photo-1585675100414-add2e465a136?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80")
pedro.avatar.attach(io: pedro_pic, filename: 'pedro.jpg', content_type: 'image/jpg')
pedro.save

lily_pic = open_file("https://images.unsplash.com/photo-1609708993734-29d07306bdc7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
lily.avatar.attach(io: lily_pic, filename: 'lily.jpg', content_type: 'image/jpg')
lily.save

roger_pic = open_file("https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=656&q=80")
roger.avatar.attach(io: roger_pic, filename: 'roger.jpg', content_type: 'image/jpg')
roger.save

# backyards

back1 = Backyard.new(
  name: "Beautiful Garden Central Cambridge",
  address: "10 Waddelow Rd, Cambridge, CB25 9LA",
  price: 60,
  description: "Beautiful garden perfect for a family picnic or a couple on a date. Would definitely suggest for people that love the outdoors.",
  max_capacity: 4,
  user_id: 1
)
back1_photo1 = open_file("https://images.unsplash.com/photo-1557429287-b2e26467fc2b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
back1.photos.attach(io: back1_photo1, filename: 'back1.jpg', content_type: 'image/jpg')
back1.save

back2 = Backyard.new(
  name: "Small Garden in Wembley",
  address: "40 Danethorpe Rd, Wembley, HA0 4RQ",
  price: 30,
  description: "Great small garden perfect for a barbecue. My husband and I love summer days eating ouside and hope you do too.",
  max_capacity: 2,
  user_id: 2
)
back2_photo1 = open_file("https://images.unsplash.com/photo-1560331470-4737e8408873?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80")
back2.photos.attach(io: back2_photo1, filename: 'back2.jpg', content_type: 'image/jpg')
back2.save

back3 = Backyard.new(
  name: "Nice large Backyard near the Sea",
  address: "78 Berrow Rd, Burnham-On-Sea, TA8 2HJ",
  price: 80,
  description: "Very large backyard perfect for a party, or group of people who want a nice outdoor setting.",
  max_capacity: 8,
  user_id: 3
)
back3_photo1 = open_file("https://images.unsplash.com/photo-1575221052072-6a4f4d7b8d8e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80")
back3.photos.attach(io: back3_photo1, filename: 'back3.jpg', content_type: 'image/jpg')
back3.save

back4 = Backyard.new(
  name: "FANTASTIC Garden in central London",
  address: "Deanshanger Memorial Community Cent, Little London, Milton Keynes, MK19 6HT",
  price: 45,
  description: "Small garden but quite quaint and nice. Would be perfect for a couple.",
  max_capacity: 2,
  user_id: 4
)
back4_photo1 = open_file("https://images.unsplash.com/photo-1563341591-ad0a750911cf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
back4.photos.attach(io: back4_photo1, filename: 'back4.jpg', content_type: 'image/jpg')
back4.save

back5 = Backyard.new(
  name: "Pretty Little Rose Garden, London",
  address: "83 Upper St, London, N1 0NU",
  price: 120,
  description: "Very nice garden. Lot's of flowers and roses, perfect for any person looking for a nice afternoon in a private place",
  max_capacity: 110,
  user_id: 5
)
back5_photo1 = open_file("https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80");
back5.photos.attach(io: back5_photo1, filename: 'back5.jpg', content_type: 'image/jpg')
back5.save

back6 = Backyard.new(
  name: "Barbecue Sunday Garden",
  address: "54 Islington Park St, London, N1 1PX ",
  price: 40,
  description: "Grab a garden for a sunday barbecue! You won't regret and are sure to enjoy it!",
  max_capacity: 8,
  user_id: 1
)
back6_photo1 = open_file("https://images.unsplash.com/photo-1595436301907-0b361827c9f8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
back6.photos.attach(io: back6_photo1, filename: 'back6.jpg', content_type: 'image/jpg')
back6.save

back7 = Backyard.new(
  name: "Very large garden in London",
  address: "60 Cross Street, London, N1 2BA ",
  price: 80,
  description: "Very large garden perfect for a large gathering or party! I hope people can enjoy it.",
  max_capacity: 15,
  user_id: 2
)
back7_photo1 = open_file("https://images.unsplash.com/photo-1598901796257-7409fcf280f5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80")
back7.photos.attach(io: back7_photo1, filename: 'back7.jpg', content_type: 'image/jpg')
back7.save

back8 = Backyard.new(
  name: "Small Picnic Garden",
  address: "Westgate House, 2a, Prebend St, London, N1 8PT",
  price: 20,
  description: "Looking for some extra cash so renting out my garden in london. Really nice picnic spot.",
  max_capacity: 2,
  user_id: 3
)
back8_photo1 = open_file("https://images.unsplash.com/photo-1601146590329-66f6867dd22e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
back8.photos.attach(io: back8_photo1, filename: 'back8.jpg', content_type: 'image/jpg')
back8.save

back9 = Backyard.new(
  name: "Coi Pond Garden",
  address: "98b St. Paul St, London, N1 7DF",
  price: 60,
  description: "Renting out our quaint London garden with a Coi Pond. Very peaceful and perfect for an artist or someone looking for peace and quiet.",
  max_capacity: 2,
  user_id: 4
)
back9_photo1 = open_file("https://images.unsplash.com/photo-1511127433666-6a603b890eed?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80")
back9_photo2 = open_file("https://images.unsplash.com/photo-1585773580816-6db5189a1c79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
back9.photos.attach(io: back9_photo1, filename: 'back9-1.jpg', content_type: 'image/jpg')
back9.photos.attach(io: back9_photo2, filename: 'back9-2.jpg', content_type: 'image/jpg')
back9.save

back10 = Backyard.new(
  name: "Very Nice London Garden",
  address: "14 Dagmar Passage, London, N1 2DN",
  price: 90,
  description: "Renting out my parents garden in London because they don't use it. Very nice and perfect for a gathering.",
  max_capacity: 10,
  user_id: 5
)
back10_photo1 = open_file("https://images.unsplash.com/photo-1611338902321-511fd14889f3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
back10.photos.attach(io: back10_photo1, filename: 'back10.jpg', content_type: 'image/jpg')
back10.save

back11 = Backyard.new(
  name: "Small Peaceful Backyard",
  address: "54 Duncan Street, Shoreditch, LONDON, N1 8BW",
  price: 20,
  description: "Small backyard with a grill. Hope you can make more use of it that I do.",
  max_capacity: 4,
  user_id: 3
)
back11_photo1 = open_file("https://images.unsplash.com/photo-1594498653385-d5172c532c00?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=967&q=80")
back11.photos.attach(io: back11_photo1, filename: 'back11.jpg', content_type: 'image/jpg')
back11.save

back12 = Backyard.new(
  name: "Water Lily Garden",
  address: "100 Upper St, London, N1 0NP ",
  price: 120,
  description: "My aunt's large house garden in central London. Small water lily pond and very peaceful.",
  max_capacity: 4,
  user_id: 5
)
back12_photo1 = open_file("https://images.unsplash.com/photo-1530082837868-fe950f0f3d85?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
back12_photo2 = open_file("https://images.unsplash.com/photo-1606481897791-d908424cc9d9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1047&q=80")
back12_photo3 = open_file("https://images.unsplash.com/photo-1542478080-8c03409bbf22?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=965&q=80")
back12.photos.attach(io: back12_photo1, filename: 'back12-1.jpg', content_type: 'image/jpg')
back12.photos.attach(io: back12_photo2, filename: 'back12-2.jpg', content_type: 'image/jpg')
back12.photos.attach(io: back12_photo3, filename: 'back12-3.jpg', content_type: 'image/jpg')
back12.save

back13 = Backyard.new(
  name: "Party Area perfect for functions",
  address: "St. Marys Church, Upper St, London, N1 2TX",
  price: 300,
  description: "Very large area perfect for a party or anything you might desire. We live here but would love you to make more use of it.",
  max_capacity: 25,
  user_id: 4
)
back13_photo1 = open_file("https://images.unsplash.com/photo-1560749003-f4b1e17e2dff?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=967&q=80")
back13.photos.attach(io: back13_photo1, filename: 'back13.jpg', content_type: 'image/jpg')
back13.save

back14 = Backyard.new(
  name: "Afternoon Getaway",
  address: "59 Essex Road, Canonbury, LONDON, N1 2SF",
  price: 88,
  description: "Looking for an afternoon getaway. Sick of being stuck inside. Come and hang out in our garden. Barbecue and picnic table provided.",
  max_capacity: 8,
  user_id: 1
)
back14_photo1 = open_file("https://images.unsplash.com/photo-1605346298331-321e06b92313?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=885&q=80")
back14.photos.attach(io: back14_photo1, filename: 'back14.jpg', content_type: 'image/jpg')
back14.save

back15 = Backyard.new(
  name: "Small Garden",
  address: "1 Islington Green, London, N1 2XH",
  price: 25,
  description: "Small backyard. Not amazing but still nice for an afternoon or to hang out with friends in a private setting.",
  max_capacity: 6,
  user_id: 2
)
back15_photo1 = open_file("https://images.unsplash.com/photo-1598902108854-10e335adac99?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
back15.photos.attach(io: back15_photo1, filename: 'back15.jpg', content_type: 'image/jpg')
back15.save

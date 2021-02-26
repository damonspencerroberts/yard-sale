# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'date'

def open_file(file)
  URI.open(file)
end
# create 2 users 
# seller
puts "Clearing backyard..."
Backyard.destroy_all
puts "Clearing users..."
User.destroy_all

users = [
  {
    email: 'karenmiller@gmail.com', 
    password: 'karen123',
    avatar: "https://images.unsplash.com/photo-1596215143922-eedeaba0d91c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
  },
  {
    email: 'johncrumpet@gmail.com', 
    password: 'john123',
    avatar: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
  },
  {
    email: 'reillylopex@gmail.com', 
    password: 'reilly123',
    avatar: "https://images.unsplash.com/photo-1542131596-dea5384842c7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
  },
  {
    email: 'pedromarquez@gmail.com', 
    password: 'pedro123',
    avatar: "https://images.unsplash.com/photo-1585675100414-add2e465a136?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80"
  },
  {
    email: 'lilymiller@aol.net', 
    password: 'lily123',
    avatar: "https://images.unsplash.com/photo-1609708993734-29d07306bdc7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
  },
  {
    email: 'roger@smith.co.uk', 
    password: 'roger123',
    avatar: "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=656&q=80"
  }
]

users.each_with_index do |user, index|
  new_user = User.new(email: user[:email], password: user[:password])
  new_user_pic = open_file(user[:avatar])
  new_user.avatar.attach(io: new_user_pic, filename: "user-#{index}.jpg", content_type: 'image/jpg')
  new_user.save
end

# backyards
puts "Cleaning database..."
puts "Adding backyards..."



backyards = [
  {
    name: "Beautiful Garden Central Cambridge",
    address: "10 Waddelow Rd, Cambridge, CB25 9LA",
    price: 60,
    description: "Beautiful garden perfect for a family picnic or a couple on a date. Would definitely suggest for people that love the outdoors.",
    max_capacity: 4,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1557429287-b2e26467fc2b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80"
    ]
  },
  {
    name: "Small Garden in Wembley",
    address: "40 Danethorpe Rd, Wembley, HA0 4RQ",
    price: 30,
    description: "Great small garden perfect for a barbecue. My husband and I love summer days eating ouside and hope you do too.",
    max_capacity: 2,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1560331470-4737e8408873?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80"
    ]
  },
  {
    name: "Nice large Backyard near the Sea",
    address: "78 Berrow Rd, Burnham-On-Sea, TA8 2HJ",
    price: 80,
    description: "Very large backyard perfect for a party, or group of people who want a nice outdoor setting.",
    max_capacity: 8,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1575221052072-6a4f4d7b8d8e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"
    ]
  },
  {
    name: "FANTASTIC Garden in central London",
    address: "Deanshanger Memorial Community Cent, Little London, Milton Keynes, MK19 6HT",
    price: 45,
    description: "Small garden but quite quaint and nice. Would be perfect for a couple.",
    max_capacity: 2,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1563341591-ad0a750911cf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    ]
  },
  {
    name: "Pretty Little Rose Garden, London",
    address: "83 Upper St, London, N1 0NU",
    price: 120,
    description: "Very nice garden. Lot's of flowers and roses, perfect for any person looking for a nice afternoon in a private place",
    max_capacity: 110,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80"
    ]
  },
  {
    name: "Barbecue Sunday Garden",
    address: "54 Islington Park St, London, N1 1PX ",
    price: 40,
    description: "Grab a garden for a sunday barbecue! You won't regret and are sure to enjoy it!",
    max_capacity: 8,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1595436301907-0b361827c9f8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80"
    ]
  },
  {
    name: "Very large garden in London",
    address: "60 Cross Street, London, N1 2BA ",
    price: 80,
    description: "Very large garden perfect for a large gathering or party! I hope people can enjoy it.",
    max_capacity: 15,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1598901796257-7409fcf280f5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80"
    ]
  },
  {
    name: "Small Picnic Garden",
    address: "Westgate House, 2a, Prebend St, London, N1 8PT",
    price: 20,
    description: "Looking for some extra cash so renting out my garden in london. Really nice picnic spot.",
    max_capacity: 2,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1601146590329-66f6867dd22e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    ]
  },
  {
    name: "Coi Pond Garden",
    address: "98b St. Paul St, London, N1 7DF",
    price: 60,
    description: "Renting out our quaint London garden with a Coi Pond. Very peaceful and perfect for an artist or someone looking for peace and quiet.",
    max_capacity: 2,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1511127433666-6a603b890eed?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80",
      "https://images.unsplash.com/photo-1585773580816-6db5189a1c79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    ]
  },
  {
    name: "Very Nice London Garden",
    address: "14 Dagmar Passage, London, N1 2DN",
    price: 90,
    description: "Renting out my parents garden in London because they don't use it. Very nice and perfect for a gathering.",
    max_capacity: 10,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1611338902321-511fd14889f3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    ]
  },
  {
    name: "Small Peaceful Backyard",
    address: "54 Duncan Street, Shoreditch, LONDON, N1 8BW",
    price: 20,
    description: "Small backyard with a grill. Hope you can make more use of it that I do.",
    max_capacity: 4,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1594498653385-d5172c532c00?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=967&q=80"
    ]
  },
  {
    name: "Water Lily Garden",
    address: "100 Upper St, London, N1 0NP ",
    price: 120,
    description: "My aunt's large house garden in central London. Small water lily pond and very peaceful.",
    max_capacity: 4,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1530082837868-fe950f0f3d85?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      "https://images.unsplash.com/photo-1606481897791-d908424cc9d9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1047&q=80",
      "https://images.unsplash.com/photo-1542478080-8c03409bbf22?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=965&q=80"
    ]
  },
  {
    name: "Party Area perfect for functions",
    address: "St. Marys Church, Upper St, London, N1 2TX",
    price: 300,
    description: "Very large area perfect for a party or anything you might desire. We live here but would love you to make more use of it.",
    max_capacity: 25,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1560749003-f4b1e17e2dff?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=967&q=80"
    ]
  },
  {
    name: "Afternoon Getaway",
    address: "59 Essex Road, Canonbury, LONDON, N1 2SF",
    price: 88,
    description: "Looking for an afternoon getaway. Sick of being stuck inside. Come and hang out in our garden. Barbecue and picnic table provided.",
    max_capacity: 8,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1605346298331-321e06b92313?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=885&q=80"
    ]
  },
  {
    name: "Small Garden",
    address: "1 Islington Green, London, N1 2XH",
    price: 25,
    description: "Small backyard. Not amazing but still nice for an afternoon or to hang out with friends in a private setting.",
    max_capacity: 6,
    user: User.all.sample,
    photos: [
      "https://images.unsplash.com/photo-1598902108854-10e335adac99?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80"
    ]
  }
]


backyards.each_with_index do |backyard, index|
  new_backyard = Backyard.new(
    name: backyard[:name],
    address: backyard[:address],
    price: backyard[:price],
    description: backyard[:description],
    max_capacity: backyard[:max_capacity],
    user: backyard[:user]
  )
  backyard[:photos].each_with_index do |photo, j| 
    opened_photo = open_file(photo)
    new_backyard.photos.attach(io: opened_photo, filename: "backyard#{index}-#{j}.jpg", content_type: 'image/jpg')
  end
  new_backyard.save
end

puts "cleaning database"
puts "creating bookings"


15.times do
  user = User.all.sample
  backyard = Backyard.all.sample
  puts "Added Booking..."
  unless user == backyard.user
    Booking.create!(
      date: Date.today + rand(1..100),
      number_of_guests: rand(10..30),
      user: user,
      backyard: backyard
    )
  end
end

40.times do
  user = User.all.sample
  backyard = Backyard.all.sample
  puts "Added Review..."
  unless user == backyard.user || user.reviews.map { |rev| rev.backyard }.include?(backyard)
    Review.create!(
      content: Faker::Lorem.sentence,
      rating: rand(1..5),
      user: user,
      backyard: backyard
    )
  end
end

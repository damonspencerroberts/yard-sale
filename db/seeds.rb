require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
backyard.destroy_all

puts "Creating backyard..."
15.Times do
    backyard = Backyard.new (
        name: Faker::Backyard.name,
        address: Faker::Address.street_address,
        price: Faker::Number.number(digits: 04),
        description: Faker::Lorem.sentences,
        max_capacity: Faker::Number.number(digits: 02)
    )
    backyards.save
    puts "Created backyard: #{backyard.name}"
    puts "Seeding done"
    end

    file = URI.open('https://unsplash.com/photos/qnjKufYqIIE')
    backyard = Backyard.new(name: 'NES', address: "", price:"", description:"")
    backyard.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

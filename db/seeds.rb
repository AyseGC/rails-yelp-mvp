# frozen_string_literal: true

# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
catagory = %w[chinese italian japanese french belgian]
50.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: catagory.sample
  )
  puts "Created #{restaurant.name}"
end

puts 'Finished!'

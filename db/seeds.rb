# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# puts 'Clean up current db (Y/N)?'

# clean = gets.chomp.downcase

# until (clean == 'y' || clean == 'n')
#   puts 'Choose yes(y) or no (n)'
#   puts 'Clean up current db (Y/N)?'
#   clean = gets.chomp.downcase
# end

# if clean == 'y'
  puts  'Cleaning database...'
  Restaurant.destroy_all
# end

puts 'Creating restaurants...'

10.times do
  attributes = { name: Faker::Restaurant.name,
                 address: Faker::Address.full_address,
                 phone_number: Faker::PhoneNumber.phone_number,
                 category: %w(chinese italian japanese french belgian).sample }
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'

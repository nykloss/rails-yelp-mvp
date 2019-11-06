# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Schnitzel',
    address:      '7 Boundary St, London E2 7JE',
    category:  'belgian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'italian'
  },
  {
    name:         'Pasta Palace',
    address:      'Cologne',
    category:     'italian'
  },
  {
    name:         'China Palace',
    address:      'Mumbai',
    category:  'chinese'
  },
  {
    name:         'Foie Gras',
    address:      'Paris',
    category:  'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

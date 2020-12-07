# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "open-uri"
require "faker"

puts "Starting seed"

puts "Cleaning old seeds"

Artist.destroy_all
Artwork.destroy_all

puts "Old Seeds destroyed"

puts 'Create 1 artist'
kkart = Artist.create!(first_name: 'Klaus',
                     last_name: 'Klausinger',
                     artist_name: 'KK ART',
                     biography: "A long life")

puts 'Create Artworks'




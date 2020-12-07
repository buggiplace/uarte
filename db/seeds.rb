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

puts 'Create Artworks'

puts 'Create 1 artist'
uarte = Artist.create!(first_name: 'Klais',
                     last_name: 'Klausinger',
                     artist_name: 'KK ART',
                     biography: "A long life")



puts 'Create Artworks'
artwork1 = Artwork.create!(title: 'HuiBu',
                     image_url: 'http://via.placeholder.com/300',
                     description: 'Something nice in a hand',
                     artist_id: uarte.id,
                     artwork_type: "Wood"
                     )

artwork2 = Artwork.create!(title: 'HuiBu2',
                     image_url: 'http://via.placeholder.com/300',
                     description: 'Some red, some yellow, some blue',
                     artist_id: uarte.id,
                     artwork_type: "Acryl"
                     )

artwork3 = Artwork.create!(title: 'HuiBu3',
                     image_url: 'http://via.placeholder.com/300',
                     description: 'A colorful picture',
                     artist_id: uarte.id,
                     artwork_type: "Color"
                     )

artwork4 = Artwork.create!(title: 'HuiBu4',
                     image_url: 'http://via.placeholder.com/300',
                     description: 'A beautiful chair',
                     artist_id: uarte.id,
                     artwork_type: "Furniture"
                     )

puts "artworks created"

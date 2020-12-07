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
uarte = Artist.create!(first_name: 'Klaus',
                     last_name: 'Klausinger',
                     artist_name: 'KK ART',
                     biography: "A long life")



puts 'Create Artworks'
artwork1 = Artwork.create!(title: 'HuiBu',
                     image_url: 'http://via.placeholder.com/300',
                     description: 'long description',
                     artist_id: uarte.id
                     )

artwork2 = Artwork.create!(title: 'HuiBu2',
                     image_url: 'http://via.placeholder.com/300',
                     description: 'long description even longer2',
                     artist_id: uarte.id
                     )

artwork3 = Artwork.create!(title: 'HuiBu3',
                     image_url: 'http://via.placeholder.com/300',
                     description: 'long description even longer 4',
                     artist_id: uarte.id
                     )

artwork4 = Artwork.create!(title: 'HuiBu4',
                     image_url: 'http://via.placeholder.com/300',
                     description: 'long description even longer 4',
                     artist_id: uarte.id
                     )

puts "one artwork created"

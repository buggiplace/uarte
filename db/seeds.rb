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
artwork1 = Artwork.create!(title: 'Rizzy',
                     image_url: 'http://via.placeholder.com/300',
                     description: 'Something nice in a hand',
                     artist_id: uarte.id,
                     artwork_type: "Wood"
                     )

# file01 = Rails.root.join('images', '01-Rizzi.jpg')
# artwork1.photos.attach(io: File.open(file01), filename: "01-Rizzi.jpg", content_type: "image/jpg")

file01 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607414213/Uarte/01-Rizzi_fgoaqr.jpg')
artwork1.photos.attach(io: file01, filename: '01-rizzi.jpg', content_type: 'image/jpg')

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

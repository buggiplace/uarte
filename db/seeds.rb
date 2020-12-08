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
artwork1 = Artwork.create!(title: 'Rizzy',
                     short_description: 'Something nice in a hand',
                     description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                     artist_id: uarte.id,
                     artwork_type: "Wood",
                     )

file01 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607414213/Uarte/01-Rizzi_fgoaqr.jpg')
artwork1.photo.attach(io: file01, filename: '01-rizzi.jpg', content_type: 'image/jpg')



artwork2 = Artwork.create!(title: 'Rizzi',
                     short_description: 'Some red, some yellow, some blue',
                     description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                     artist_id: uarte.id,
                     artwork_type: "Acryl",
                     specifications: "Holz, Kunstharzlack, Blattgold, Blattsilber",
                     size: "hbt: 85 x 80 x 6 cm",
                     )

file02 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607414208/Uarte/02-Untiteled_pudtyx.jpg')
artwork2.photo.attach(io: file02, filename: '02-Untitled', content_type: 'image/jpg')

artwork3 = Artwork.create!(title: 'Untitled',
                     short_description: 'A colorful picture',
                     description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                     artist_id: uarte.id,
                     artwork_type: "Color",
                     specifications: "Holz, Kunstharzlack, Blattgold, Blattsilber",
                     size: "hbt: 85 x 80 x 6 cm",
                     )

file03 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607439637/Uarte/03-Gold_gzk3oc.png')
artwork3.photo.attach(io: file03, filename: '03-Gold.jpg', content_type: 'image/jpg')

artwork4 = Artwork.create!(title: 'Gold',
                     short_description: 'A beautiful chair',
                     description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                     artist_id: uarte.id,
                     artwork_type: "Furniture",
                     specifications: "Holz, Kunstharzlack, Blattgold, Blattsilber",
                     size: "hbt: 85 x 80 x 6 cm",
                     )

file04 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607414214/Uarte/04-Seasons_whizd5.jpg')
artwork4.photo.attach(io: file04, filename: '04-Seasons.jpg', content_type: 'image/jpg')



puts "4 artworks created"

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

require 'csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath = Rails.root.join('db', 'uarte_csv_v1.csv')

    CSV.foreach(filepath, csv_options) do |row|

    art = Artwork.create!(
          title: row['title'],
          artwork_type: row['artwork_type'],
          short_description: row['short_description'],
          description: row['description'],
          specifications: row['specifications'],
          size: row['size'],
          picture_url: row['picture_url'],
          artist_id: uarte.id
        )
      image_file = URI.open(art.picture_url)
      art.photo.attach(io: image_file, filename: 'xxx', content_type: 'xxx')
  end

puts "Artwork Seed done - #{Artwork.count} added"


# if Vehicle.count.zero?
#   10.times do
#     v = Vehicle.create(
#       vin: FFaker::Code.ean,
#       color: FFaker::Color.name,
#       maker_id: m.id,
#       model_id: m.id,
#       wholesale_price: '40,000'
#     )
#     v.image.attach(io: File.open('/path/to/file'), filename: 'file.jpg')
#   end
# end



# file02 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607452247/Uarte/02-Untiteled_oyctwz.png')
# artwork2.photo.attach(io: file02, filename: '02-Untitled', content_type: 'image/jpg')

# artwork1 = Artwork.create!(title: 'Rizzy',
#                      short_description: 'Something nice in a hand',
#                      description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
#                      artist_id: uarte.id,
#                      artwork_type: "Wood",
#                      )

# file01 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607452466/Uarte/01-Rizzi_j58aor.png')
# artwork1.photo.attach(io: file01, filename: '01-rizzi.jpg', content_type: 'image/jpg')



# artwork2 = Artwork.create!(title: 'Rizzi',
#                      short_description: 'Some red, some yellow, some blue',
#                      description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
#                      artist_id: uarte.id,
#                      artwork_type: "Acryl",
#                      specifications: "Holz, Kunstharzlack, Blattgold, Blattsilber",
#                      size: "hbt: 85 x 80 x 6 cm",
#                      )

# file02 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607452247/Uarte/02-Untiteled_oyctwz.png')
# artwork2.photo.attach(io: file02, filename: '02-Untitled', content_type: 'image/jpg')

# artwork3 = Artwork.create!(title: 'Untitled',
#                      short_description: 'A colorful picture',
#                      description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
#                      artist_id: uarte.id,
#                      artwork_type: "Color",
#                      specifications: "Holz, Kunstharzlack, Blattgold, Blattsilber",
#                      size: "hbt: 85 x 80 x 6 cm",
#                      )

# file03 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607439637/Uarte/03-Gold_gzk3oc.png')
# artwork3.photo.attach(io: file03, filename: '03-Gold.jpg', content_type: 'image/jpg')

# artwork4 = Artwork.create!(title: 'Gold',
#                      short_description: 'A beautiful chair',
#                      description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                     # artist_id: uarte.id,
#                      artwork_type: "Furniture",
#                      specifications: "Holz, Kunstharzlack, Blattgold, Blattsilber",
#                      size: "hbt: 85 x 80 x 6 cm",
#                      )

# file04 = URI.open('https://res.cloudinary.com/dvoduvlcz/image/upload/v1607452251/Uarte/04-Seasons_dsot66.png')
# artwork4.photo.attach(io: file04, filename: '04-Seasons.jpg', content_type: 'image/jpg')



puts "seed finished"

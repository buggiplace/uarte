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
uarte = Artist.create!(first_name: 'Ulrich',
                     last_name: 'Bugiel',
                     artist_name: 'Uarte',
                     biography: "A long life")



puts 'Create Artworks'

require 'csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath = Rails.root.join('db', 'uarte_csv_v6.csv')

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
      puts "1 Artwork created"
  end

puts "Artwork Seed done - #{Artwork.count} added"

puts "seed finished"

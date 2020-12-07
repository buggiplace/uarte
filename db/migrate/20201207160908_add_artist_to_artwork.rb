class AddArtistToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_reference :artworks, :artist, foreign_key: true
  end
end

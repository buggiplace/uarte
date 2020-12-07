class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :description
      t.string :artwork_type
      t.string :image_url
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end

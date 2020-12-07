class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :artwork_type
      t.string :image_url
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end

class AddArtworkSpecs < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :specifications, :string
    add_column :artworks, :size, :string
  end
end

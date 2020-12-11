class AddSlugToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :slug, :string
    add_index :artworks, :slug, unique: true
  end
end

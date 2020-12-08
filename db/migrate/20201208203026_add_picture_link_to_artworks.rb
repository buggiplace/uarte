class AddPictureLinkToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :picture_url, :string
  end
end

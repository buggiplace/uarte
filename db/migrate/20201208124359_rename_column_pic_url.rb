class RenameColumnPicUrl < ActiveRecord::Migration[6.0]
  def change
    rename_column :artworks, :image_url, :short_description
  end
end

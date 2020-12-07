class CreateArtist < ActiveRecord::Migration[6.0]
  def change
    create_table :artist do |t|
      t.string :first_name
      t.string :last_name
      t.string :artist_name
      t.string :biography

      t.timestamps
    end
  end
end

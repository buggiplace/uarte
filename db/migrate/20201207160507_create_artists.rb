class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :artist_name
      t.string :biography

      t.timestamps
    end
  end
end

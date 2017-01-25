class AddBioToMakeupArtist < ActiveRecord::Migration[5.0]
  def change
    add_column :makeup_artists, :bio, :string
  end
end

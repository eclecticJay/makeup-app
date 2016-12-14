class CreateArtistSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_specialties do |t|
      t.string :makeup_artist_id
      t.string :specialty_id

      t.timestamps
    end
  end
end

class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :makeup_artist_id
      t.string :client_id
      t.string :photos

      t.timestamps
    end
  end
end

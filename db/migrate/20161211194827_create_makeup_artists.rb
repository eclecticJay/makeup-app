class CreateMakeupArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :makeup_artists do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :zipcode

      t.timestamps
    end
  end
end

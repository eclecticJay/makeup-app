class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :client_id
      t.string :makeup_artist_id
      t.string :location
      t.string :time

      t.timestamps
    end
  end
end

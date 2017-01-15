class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :text
      t.integer :makeup_artist_id
      t.integer :client_id

      t.timestamps
    end
  end
end

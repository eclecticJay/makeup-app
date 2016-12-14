class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.string :makeup_id
      t.string :makeup_artist_id

      t.timestamps
    end
  end
end
